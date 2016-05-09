**Introduction**

Simple docker image to test uvloop.

**Usage**

uvloop images ca be usefull if you are develop your application with uvloop and you want to test in a clean environment. Start docker container with the following command:
```
docker run -d --name uvloop -v your_code_path:docker_path anglnx/uvloop python path_to_your_uvloop_app.py
```

Test you client application with the following command:
```
docker run -i -t uvloop python path_to_client_app.py
```


**Build**

In order to build your uvloop image:
```
chmod +x build.sh && ./buils.sh
```
