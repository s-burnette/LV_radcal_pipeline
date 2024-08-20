## Getting Started with Git

>LV_radcal_pipeline git repository: https://github.com/z-vig/LV_radcal_pipeline
>To clone the repo: https://github.com/z-vig/LV_radcal_pipeline.git

To ensure the reusability and understandability of our science, it is best that we work on making our calibrations into a matlab toolbox, rather than just a collection of loosely related scripts. Git is the state of the art when it comes to version control, and so it should always be used when working on any kind of code base with a team. Hopefully, the outlined steps below will allow us to create a cohesive pipeline that will last through the entire Lunar-VISE mission and beyond.

---

#### To get matlab toolbox files onto your machine from GitHub:

1. Make sure git is installed for your OS: https://git-scm.com/downloads. 
2. In your preferred terminal/command line interface, go to whatever directory where you would like this codebase to live. Ensure git is installed correctly with `git -v`.
3. In your terminal, input `git clone <repo url>`.
4. Once the files are on your local machine, familiarize yourself with the files structure. It is based on [these guidelines](https://github.com/mathworks/toolboxdesign) for matlab toolbox creation put out by MathWorks.

#### To begin working with code:
1. The pinnacle utility of git is it's [branching system](https://git-scm.com/book/en/v2/Git-Branching-Branches-in-a-Nutshell). We will be utilizing a basic branching scheme for this project, that is summarized in the following steps.
2. Change your directory to the repo you just copied. By inputting `git branch -a`, all of the current branches in the project will appear in your terminal. There should be both a local `main` branch as well as a remote `origin/main` branch. The local branch will exist on your machine only, wheras the remote branches will be what you will "push" your code to when you are ready to share it with the team.
3. To begin writing code, create your personal editing branch using `git branch <your name>`
4. Switch to that branch using `git checkout <branch name>`.
5. To let others see what changes you are working on, you must make make a remote repository that tracks the changes in this local directory.

#### Standard workflow:
1. You will begin your work 
2. 
