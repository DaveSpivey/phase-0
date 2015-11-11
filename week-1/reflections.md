# Think About Time
Time management is something I’ve had only limited focus on since being out of school, but it’s helped immensely in practicing piano, my main instrument. My practices in TM were narrow in scope and kind of obvious though: set clear goals, get rid of any distractions. Without those I’d never get anything done, but clearly there is much more I can do, and I’m glad to be turning focus to it now, before the insanity of the immersive onsite portion of this curriculum starts. Some of the links on the release page had cool ideas, like the timebox. Again this seems basic and simple, but I like that part of the Pomodoro structure is that the first few minutes are used to recap so you can size up the scope of the work, then at the end you review. This seems a more sensible way to prepare your mind for a break, with a sense of closure, rather than screaming into the finish line and going “ok brain off time”. Besides my more “officially productive” piano and other music practice sessions, my time management strategies look more like the “Counter-intuitive productivity” guy. When I’m not focusing on how I want to achieve a goal, I tend to think “Oh, well this is how I learn - I’ll just go as it feels natural”. Distraction pitfalls abound. This method seems to suggest it only works if you’re super into what you’re doing, which is not always the case. One of the things that was mentioned in the “Create a Habit” video was the possibility of working toward becoming a morning person. I’ve been on a musician/bartender’s schedule for a decade, so naturally I’m not. One of the biggest obstacles to my productivity has been morning brain-grog that clouds concentration. I looked up some tips for this and I’ve come up with a pattern I’m going to implement: eat breakfast sooner, exercise (even a small amount) soon after waking, and doing morning prep the night before are some good things I’ll add to my list. I think the taking breaks or time boxing will also help stop sleepbrain. So overall, I’ll make mornings count more, take scheduled breaks, check in with my progress before and after those breaks, set clear goals and avoid distractions.

# The Command Line
Using the shell totally makes you feel like a rollerblading movie hacker... once it stops making you feel like grandma trying to open an email.  BASH stands for Bourne Again SHell and it's what we're using on out Linux based systems. It's a relic from terminal-free days of computing and is only interested in doing really specific stuff for the user, really efficiently. This is not the first time I've heard promises like "finally own the hunk of metal" etc. - and I'm definitely looking forward to flying around my system with minimal effort.  But in the meantime, wow I hate staring at man pages. I would name that as my #1 challenge today, mostly because in the interest of being 100% explicit, instructions or descriptions are often flooded with other technical terms that sort of rob you of the context necessary to figure out the original thing. I'm sure that'll get better. I was able to successfully execute all the commands, although it took a while to understand how to use xargs and why. The most basic ones seem the most important at this point, specifically navigating directories and examining file contents, although I'm sure 'man' will be just important as all these as my CLI capabilities expand. OK! syntax list:

pwd - Print Working Directory - where am I in my big system?

ls - list contents of this directory - includes files and child directories

mv - move file or directory

cd - change directory

../ - navigate one directory up (parent directory)

touch - create an empty file in the current directory

mkdir - create new directory within current directory

less - display contents of text file one navigable page at a time

rmdir - remove or delete directory (if empty)

rm - delete a file

help - isn't this just the Windows Powershell version of 'man'? if so, displays manual for command

# Forking and Cloning
My instructions for repos: creating, cloning and forking...

Although we're about to really dive in to using git on the command line, starting on a project is very GUI-friendly. After logging in to your Github account (you have a Github account, right?) you'll see a set of navigation buttons on the top-right of the screen. Click the plus sign and select 'new repository' and give it a name. If you'd like to work on something that's already on Github, go to that project on the site and look in the top-right again for the 'Fork' button. After clicking, Github will create a new "forked" version of the project ready to clone for your own use. Look on the right of the page for "HTTPS clone url" and a text field. This is the url you'll need to clone this project to your computer, so copy it and head to Terminal. Navigate on the command line to the directory you'd like to place the project into and type "git clone URL", where URL is what you copied from Github. It'll take a second to process, but once it's finished, you've got a cloned version of the project on your own computer.

It's important to fork repos because that creates a copy independent of the master, ready for editing so it doesn't mess with the project master. Setting up Github was pretty straightforward, and I'd say my only hesitations were in choosing between a cheeky user name and a professional one. I went with davespivey, and I'm not saying which one of those two that happens to be.