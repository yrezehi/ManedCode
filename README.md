# Maned Code

Working on multiple IDEs while trying to pick the right local LLM is painful, why these AI are extention dependant? does it have to? why not integrating AI's as abstract layer?

## Initial Plan

POC with already exisitng tools

### Watchman 

Register a trigger

```
watchman -j
```

Then it expect you to put paste below json

```
["trigger", ".", {
    "name": "run-bash-script",
    "expression": ["allof", ["match", "*"]],
    "command": ["C:\\Program Files\\Git\\usr\\bin\\bash.exe", "-c", "C:\\Users\\Administrator\\Documents\\Projects\\ManedCode\\script\\main.sh", "${root}", "${files}"]
}]
```

To log an issue or debug in general run

```
watchman --logfile=C:\Users\Administrator\Documents\Projects\ManedCode\script\watchman.log --log-level debug
```
