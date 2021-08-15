# DupliCat

<p align="center">
  <a href="https://github.com/Zarinoow/DupliCat">
    <img src="favicon.png" alt="DupliCat Logo" height="256">
  </a>
  <br/>
  <sub>Logo Made By <a href="https://github.com/Zarinoow">Zarinoow</a></sub>
</p>

<h3 align="center">DupliCat is a linux tool that allows you to copy the same file(s) to several folders at once.</h3>
<hr/>

## How to use it ?

<p>1) First, download the latest version <a href="https://github.com/Zarinoow/DupliCat/releases/latest/">here</a>.</p>
<p>2) To be able to run the script, you have to grant it permission in execution.</p>

```
chmod +x duplicat.sh
```
<p>3) Now, you need to create a folder called "files", this is where you would put all the folder and files you want to duplicate</p>

<p>4) Now you have to change the destination folders. To do this, change the variable "folders" and assign it to a directory path. For each directory, use a new line.</p>

```
nano duplicat.sh
```

```
folders=(
"/example/folder1"
"/example/folder2"
"/example/folder3"
)
```

<p>5) You can now run the script.</p>

```
./duplicat.sh
```

<p>6) From now on, several choices are available to you.</p>
<p>0 - ∝) Choose the destination folder, for a multiple selection, separate with a comma. (Eg: "0,1,4")
  </br>a) Copy the file to all specified folders
  </br>c) Exit the program without copying anything
</p>

<p>7) Once you have chosen the option, press enter and your selection should be copied.</p>


## ❓ Need help or want to make a suggestion
<p align="center">https://discord.gg/jbg6x8Buum</p>
