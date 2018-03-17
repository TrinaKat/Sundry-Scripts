######################### MAKING MY TERMINAL BEAUTIFUL ########################
PS1='\[\033[36m\]\u\[\033[m\]@\[\033[33m\]\h\[\033[m\]:\[\033[32m\]\W\[\033[m\] 🥑 $ '

######################### I AM CS MAJOR I DO CS THINGS #########################
alias conf='vi ~/.bash_profile; source ~/.bash_profile;'
alias src='source ~/.bash_profile'
alias hosts='sudo vi /etc/hosts'
alias edit='"/Applications/Sublime Text.app/Contents/MacOS/Sublime Text" > /dev/null 2>&1 $1'
alias now='date "+DATE: %m-%d-%Y%nTIME: %H:%M:%S"'
alias size='printf '\''\e[8;35;130t'\''; printf '\''\e[3;100;0t'\'''
alias long='printf '\''\e[8;40;90t'\''; printf '\''\e[3;250;0t'\'''

########################### ACTIVATE THE MAGIC OF CS ###########################
# TBH just to keep track of these because will forget the commands and the aliases...
alias tf='source ~/tensorflow/bin/activate'
alias conup='conda update -n base conda'
alias connew='conda create --name myenv pip python=2'
alias conact='conda activate myenv'
alias condeact='conda deactivate'

####################### NAVIGATING FOR THE LAZY (AKA ME) #######################
alias b1='cd ..; l'
alias b2='cd ..;cd ..; l'
alias b3='cd ..;cd ..;cd ..; l'
alias l='ls -lFG'
alias la='ls -laFG'
alias lt='ls -ltFG'
alias docs='cd ~/Dropbox/Docs; l'
alias winter='cd ~/Dropbox/Docs/Winter2018; l'
alias devx='cd ~/Dropbox/Docs/DevX; l'
alias dora='cd ~/Dropbox/Docs/DevX/Dora; l'
alias proj='cd /Users/kwijaya/Dropbox/Docs/Projects; l'
alias burn='cd ~/Dropbox/Docs/Projects/Burn-Book; l'

############################### UCLA LNX LOGIN #################################
alias lnx='/Users/kwijaya/Dropbox/Docs/Projects/Sundry-Scripts/ssh_linux.sh'
alias lnx7='ssh wijaya@lnxsrv07.seas.ucla.edu'
alias lnx9='ssh wijaya@lnxsrv09.seas.ucla.edu'

############################ ARTSY ASCII ANIMATIONS ############################
alias animate='cd ~/Dropbox/Docs/Projects/ASCIIanim; ./ascii_anim_options.sh'
alias boi='cd ~/Dropbox/Docs/Projects/ASCIIanim; ./ascii_anim.sh datboi.txt'
alias globe='cd ~/Dropbox/Docs/Projects/ASCIIanim; ./ascii_anim.sh globe.txt'
alias smoosh='cd ~/Dropbox/Docs/Projects/ASCIIanim; ./ascii_anim.sh smoosh.txt'
alias think='cd ~/Dropbox/Docs/Projects/ASCIIanim; ./ascii_anim.sh thinkface.txt'
alias omfg='/usr/bin/open -a "/Applications/Google Chrome.app" 'http://www.omfgdogs.com''

########################## EMOJIS ARE SO FUN AND FARTSY ########################
alias emoji='echo -e "\nAvailable Emoji Art Aliases \n--------------------------- \nmotivateme/motivate/mot \nhomework/hw \nxmas \nlaugh \nqueen \ndance \nmagicat \nboelter \n"'
alias motivateme='echo -e "\n🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 \n YOUR CODE IS LIT!!!\n   YOU GOT THIS!!!   \n🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 🔥 \n"'
alias motivate='motivateme'
alias nerd='cat ~/Dropbox/Docs/Dat/nerd.txt'
alias homework='echo -e "
📔 📚             📚
📓 📚 📖   😫   📚 📚 📓
📕 📚 📚   📝   📗 💻 📘
📖 ⁣📖 📖 📖 📖 📖 📖 📖 📖
 Do your homework!
  ✏️ 📝 ✏️ 📝 ✏️ 📝 ✏️
"'
alias hw='homework'
alias xmas='echo -e "
    🌟
    🎄
   🎄 🎄
  🎄 ⁣🎄 🎄
 🎄 🎄 🎄 🎄
🎄 🎄 🎄 🎄 🎄
  🎁 🎁 🎁
"'
alias laugh='echo -e "
😐 😐 😐 😐 😐 😐 😐
😐 😐 😐 😐 😐 😐 😐
😐 😐 😐 😂 😐 😐 😐
😐 😐 😐 😐 😐 😐 😐
😐 😐 😐 😐 😐 😐 😐 
"'
alias queen='echo -e "
⁣ 👑
  👩🏻
 ✌👗 ⁣✌
  👡👡
"'
alias dance="echo '
 (•_•)
 <)  )╯ all the single ladies
  /  \ 

  (•_•)
 \(  (> all the single ladies
  /  \ 

 (•_•)
 <)  )╯ oh oh oh
  /  \ 
'"
alias magicat="echo '
 ∧＿∧
( ･ω･)つ━☆・*。
⊂　 ノ 　　　・゜+.
しーＪ　　　°。+ *  )
　　　　　　　　　.·  .·*  )  .·* )
　　　　　　　　　　( .·  (¸.· * ☆
'"
alias boelter="echo '
_________
         |
 [       |
      [  |  
   [     |  \ /
         |  \|/
   [     |   O
[        |
      [  |
   __    |
  |. |   |
  |  |   |
     --   -  ----
 --   -  --- - --- -
'"

# added by Miniconda2 installer
. /Users/kwijaya/miniconda2/etc/profile.d/conda.sh
