Vifm
----

Vifm is a vi-inspired file manager that runs in a terminal, and has two panes (similar to the
days of yore with Midnight Commander). For vi users, it's pretty natural to grasp so I won't go
into detail about it. Just get it.

AlternateTab Gnome Extensions
-----------------------------

By default, Gnome 3 groups applications in the Alt-Tab view when switching from one application to
another. While it is possible to navigate into application groups via the keyboard, it's a bit awkard.
A better solution is the old Alt-Tab behavior of switching between windows instead of application groups.
This can be accomplished with the 
[AlternateTab extension](https://extensions.gnome.org/extension/15/alternatetab/), which is dead simple to install.

By default, AlternateTab only shows windows of the current workspace. If you are a heavy user of workspaces,
you may wish to change this via it's configuration panel.

Switcher Gnome Extension
------------------------

In addition to AlternateTab, [Switcher](https://github.com/daniellandau/switcher) is a different style of
switcher, but default using Super-W. It lists the applications already open, but allows you to start typing
and will launch a new application if it isn't already opened. You can use this in conjunction with AlternateTab.


Gnome Shell Settings
--------------------


Fish
----

Fish is a modern terminal shell that is smart and user-friendly. It's particularly relevant to a vi-workflow
because it offers both enhanced tab-completion and a built-in VI mode. Both of these come default with Fish.

By default, Fish uses Emacs key bindings but switching it to VI mode is simple:

```
fish_vi_key_bindings
```

That will save the bindings for your current session and all future sessions.

In addition, the Oh-My-Fish project comes with a number of themes that are compatible with the VI mode:

* SimpleVi
* Cyan
* BobTheFish
* BudSpencer
* Slavic Cat
* syl20bnr
* tomita
* dangerous

Which you use is a matter of personal preference.  My personal preference is BobTheFish, which can be installed
via the following steps.

1. Install Oh-My-Fish: `curl -L https://get.oh-my.fish | fish`
2. Install the Powerline Font: `sudo apt-get install fonts-powerline`
3. Install BobTheFish: `omf install bobthefish`

See the `setup.fish` file in this repository.

Tilix
-----

Vim and Gvim
------------

Of course Vim and GVim are vim capable! That said, in my workflow I only use Vim for quick editing of system files
or when I have a shell open on a remote host. Most of my coding is done in an IDE, specifically IntelliJ IDEA for me. 
I rarely use GVim.

The biggest workflow difference with Vim is using buffers, and since Vim runs in a terminal interpretting Control-Tab
is difficult (and whould interfere with the terminals use of Control-Tab). For this, I use the "airline" plugin along
with remapping Control-L and Control-H to mean next and previous buffers.

My simple version of my vimrc is included in this repository.

Visual Studio Code
------------------


IntelliJ IDEA
-------------


Vimium and Vimium-FF
--------------------

Email and Mutt
--------------

Unfortuntely, there are no good solutions for GUI email clients. There are a lot of half measures,
which will not be listed here. The best bet for email is to back 25 years to the best terminal
based email client ever created, [Mutt](http://www.mutt.org/).

For my needs, I required a better startup time than offered by Mutt using IMAP as I have a lot of
email I should have deleted years ago but never did. So I compiled a copy of [NeoMutt](https://neomutt.org/)
with the ldbm backend. You can see how I did the compilation [here](https://github.com/anewton1998/viish-keyboarding/blob/master/make-neomutt.md).

Mutt and NeoMutt need no special configuration for keyboard navigation out-of-the-box. You might do some
customization for them... odds are you will... but out-of-the-box they are keybaord ready and very Vi
in nature.


Your Own Help
-------------


Things That Don't Work So Great
-------------------------------

Here are some things that I tried but don't seem to work as well in practice:

* slack-term: This is a console based Slack client. Some of the movement keys are vi-centric, but in the
end I did not find them to be worth it because the actually editing of messages did not use vi-bindings.
Thus it did not seem worth it, especially since Slack is an interactive chat service with all sorts of
features which will not work well in a console.
* Using modified 'h' and 'l' keys for switching tabs. Though Vimium and Vimium-FF support this, I often
get it confused with the purpose of modified 'j' (back in history) and modified 'k' (forward in history).
Plus, the Alt-Tab / Alt-Shift-Tab or Super-Tab / Super-Shift-Tab works well for switching between applications 
while Ctrl-Tab / Ctrl-Shift-Tab works well in browsers and other applications. The metafore here doesn't seem
to work, especially since Alt-Tab does application switching between the last two applications.

