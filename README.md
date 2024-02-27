# challenge-s09-e01

Builder une image Docker qui sert un contenu html customisé par vos soin, la publier sur un un compte Docker Hub public.

- créer un fichier index.html personnalisé
- Ecrire dans ce dépôt un fichier Dockerfile qui installe un serveur Caddy
- builder l'image, la nommer "monweb"
- la tester localement avec docker run
- register votre compte Docker (remplacer par la suite aurelienbras par votre compte)
- tagguer l'image pour préarer l'upload `docker tag monweb aurelienbras/monweb`
- push l'image `docker push aurelienbras/monweb`

***

**Mon image caddy est disponible ici:**
- https://hub.docker.com/r/sameddemet/monweb 

**Mes images madoc est disponible ici:** 
- https://hub.docker.com/r/sameddemet/madoc-base
- https://hub.docker.com/r/sameddemet/madoc-init
- https://hub.docker.com/r/sameddemet/madoc-dev
- https://hub.docker.com/r/sameddemet/madoc-build
- https://hub.docker.com/r/sameddemet/madoc-prod