# Maned Code

Working on multiple IDEs while trying to pick the right local LLM is painful, why these AI are extention dependant? does it have to? why not integrating AI's as abstract layer?

## Initial Plan

POC with already exisitng tools

### Watchman 

```
watchman -j
```

```
["trigger", ".", {
    "name": "run-bash-script",
    "expression": ["allof", ["match", "*"]],
    "command": ["C:\\Program Files\\Git\\usr\\bin\\bash.exe", "-c", "C:\\Users\\Administrator\\Documents\\Projects\\ManedCode\\script\\main.sh", "${root}", "${files}"]
}]
```

```
watchman --logfile=C:\Users\Administrator\Documents\Projects\ManedCode\script\watchman.log --log-level debug
```
