
# python-tox-docker
Docker Image for python unit test using tox

## Support Version

```
python : 3.7 | 3.8 | 3.9 | 3.10 | 3.11
pypy : 
```


## how to use

```shell
$ docker pull deadlylaid/tox:0.0.1-amd64
$ docker run -d deadlylaid/tox:0.0.1-amd64
```

## CI

### Bitbucket Pipeline

```yaml
image: deadlylaid/tox:0.0.1-amd64
 
 pipelines:
   default:
     - step:
         name: tox
         caches:
           - pip
         script:
           - [install linux packages what you need]
           - pip install ...
           - tox
```
