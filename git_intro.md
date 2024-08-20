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
2. Change your directory to the repo you just copied. By inputting `git branch -a`, all of the current branches in the project will appear in your terminal. There should be both a local `main` branch as well remote branches for main `origin/main` and individual team members `origin/<team member>`. The local branch will exist on your machine only, wheras the remote branches will be what you will "push" your code to when you are ready to share it with the team.
3. To begin writing code, create your personal development branch using `git branch <your name>`
4. Switch to that branch using `git checkout <branch name>`.
5. To let others see what changes you are working on, you must make make a remote repository that tracks the changes in this local directory. Use `git push --set-upstream origin <your name>`. 

#### Standard workflow:
1. Before you begin your work in matlab, checkout your development branch `git checkout <your name>`.
2. As long as you have a "clean branch" (i.e. no outstanding changes, no pending commits and all commits pushed to remote. You can check this using `git status`), you can pull the current main branch `git pull origin main`
3. Complete your work in matlab, as normal.
4. Once a reasonable step in your work has been completed, go back to your command line to update your remote repository using the following: 
   1. `git add .`
   2. `git commit -m "this is my commit message"`
   3. `git push`
5. Make sure your commit message is short yet descriptive. It helps if you perform these steps often while you work, so that an individual commit does not encompass too much work.
6. Once your changes appear on your personal development branch remotely, they can then be merged to the main branch by the repository owner.
