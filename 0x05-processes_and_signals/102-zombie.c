#include <stdio.h>
#include <stdlib.h>
#include <unistd.h>

/**
 * infinite_while - loop infinitely
 *
 * Return: 0 for success
 */
int infinite_while(void)
{
	while (1)
	{
		sleep(1);
	}
	return (0);
}

/**
 * main - Entry point, create zombies
 *
 * Return: 0 Always Success
 */
int main(void)
{
	int i;
	pid_t ppid, pid;

	ppid = getpid();
	for (i = 0; i < 5; i++)
	{
		if (getpid() == ppid)
		{
			pid = fork();
			if (pid == 0)
				printf("Zombie process created, PID: %d\n", getpid());
		}
	}

	infinite_while();
	return (0);
}
