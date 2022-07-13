# Valhalla in docker

## prepare

```bash
docker pull valhalla/valhalla:run-latest 
```

## create routing

```bash
# wget pbf file
docker run -e PBF_FILE=japan-20220712.pbf -v ${PWD}:/srv -it valhalla/valhalla:run-latest /srv/run_valhalla_all.sh
```

## run routing

```bash
docker run -p 8002:8002 -v ${PWD}:/srv -it valhalla/valhalla:run-latest /srv/run_valhalla_api.sh
```

### visual demo

```bash
git clone --depth=1 --recurse-submodules --single-branch --branch=gh-pages https://github.com/valhalla/demos.git
# open demos/routing/index-internal.html
```
