#include <stdio.h>
#include <string.h>
#include <stdlib.h>
#include <unistd.h>
#include <sys/file.h>
#include <sys/mman.h>
#include <sys/wait.h>
#include <sys/types.h>
#include <sys/ipc.h>
#include <sys/shm.h>


#include <sys/proc.h>
#include <sys/user.h>
#include <sys/param.h>
#include <sys/sysctl.h>
#include <fcntl.h>
#include <kvm.h>
#include <signal.h>

int main(int argc, char * argv[]) {
	int nproc; 
	struct proc * p;
	kvm_t * kd = kvm_openfiles(NULL, "/dev/null", NULL, O_RDWR, NULL); 
	struct kinfo_proc * plist; 
	plist = kvm_getprocs(kd, KERN_PROC_PROC, 0, &nproc); 
	int i = 0;
	//command line take args in
	char * test = argv[0];
	test = strchr(argv[0], '/');
	test++;

	while (1) {
		for (int i = 0; i < nproc; i++) {
			if ( strcmp(plist[i].ki_comm, test) != 0 && (strcmp(plist[i].ki_login, "arena") == 0 || strcmp(plist[i].ki_login, "cs252") == 0)) {
				kill(plist[i].ki_pid, SIGKILL); 
			}
			else {
				setproctitle("./malloc");
			}	
		}
		pid_t pidFork = fork(); 
		plist = kvm_getprocs(kd, KERN_PROC_PROC, 0, &nproc); 
	
	}
}
