# Valhalla in docker

## prepare

```
docker pull valhalla/valhalla:run-latest 
```

## create routing

```
docker run -v ${PWD}:/srv -it valhalla/valhalla:run-latest /srv/run_valhalla_all.sh
```

## run routing

```
docker run -p 8002:8002 -v ${PWD}:/srv -it valhalla/valhalla:run-latest /srv/run_valhalla_api.sh
```

### visual demo

```
git clone --depth=1 --recurse-submodules --single-branch --branch=gh-pages https://github.com/valhalla/demos.git
open demos/routing/index-internal.html
```
