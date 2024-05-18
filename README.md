<div id="top"></div>

<!-- PROJECT LOGO -->
<br />
<div align="center">
  <a href="https://github.com/CampAsAChamp/home-server">
    <img src="imgs/server-512.webp" alt="Logo" width="80" height="80">
  </a>

<h3 align="center">Home Server</h3>

  <p align="center">
    My Home Server for file storage, photo, movie, tv management & serving, with many other bells and whistles.
    <br />
  </p>
</div>


<!-- TABLE OF CONTENTS -->
<details>
  <summary>Table of Contents</summary>
  <ol>
    <li>
      <a href="#about-the-project">About The Project</a>
      <ul>
        <li><a href="#built-with">Built With</a></li>
      </ul>
    </li>
    <li>
      <a href="#getting-started">Getting Started</a>
      <ul>
        <li><a href="#prerequisites">Prerequisites</a></li>
        <li><a href="#installation">Installation</a></li>
      </ul>
    </li>
    <li><a href="#service-links">Service Links</a></li>
    <li><a href="#roadmap">Roadmap</a></li>
  </ol>
</details>


<!-- ABOUT THE PROJECT -->
## About The Project

[![Product Name Screen Shot][product-screenshot]](https://example.com)

<p align="right">(<a href="#top">back to top</a>)</p>


### Built With

[![My Skills](https://skillicons.dev/icons?i=ubuntu,linux,docker,nginx,mongodb,postgres,redis,cloudflare)](https://skillicons.dev)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- GETTING STARTED -->
## Getting Started

This is an example of how you may give instructions on setting up your project locally.
To get a local copy up and running follow these simple example steps.

### Prerequisites

This is an example of how to list things you need to use the software and how to install them.
- **Docker**
  ```sh
  # Add Docker's official GPG key:
  sudo apt-get update
  sudo apt-get install ca-certificates curl gnupg
  sudo install -m 0755 -d /etc/apt/keyrings
  curl -fsSL https://download.docker.com/linux/ubuntu/gpg | sudo gpg --dearmor -o /etc/apt/keyrings/docker.gpg
  sudo chmod a+r /etc/apt/keyrings/docker.gpg

  # Add the repository to Apt sources:
  echo \
    "deb [arch=$(dpkg --print-architecture) signed-by=/etc/apt/keyrings/docker.gpg] https://download.docker.com/linux/ubuntu \
    $(. /etc/os-release && echo "$VERSION_CODENAME") stable" | \
    sudo tee /etc/apt/sources.list.d/docker.list > /dev/null
  sudo apt-get update

  # Install the Docker package
  sudo apt-get install docker-ce docker-ce-cli containerd.io docker-buildx-plugin docker-compose-plugin
  ```
- **MergerFS & SnapRAID**
  - https://thenomadcode.tech/mergerfs-snapraid-is-the-new-raid-5

### Installation

1. Clone the repo
   ```sh
   git clone https://github.com/CampAsAChamp/home-server.git
   ```
3. Start the main stack
   ```sh
   cd docker
   docker compose up -d
   ```
3. Start the `Spotify` stack
   ```sh
   cd spotify
   docker compose up -d
   ```
    i. Set up your Spotify Developers application if you haven't already https://github.com/Yooooomi/your_spotify?tab=readme-ov-file#creating-the-spotify-application
3. Start the `Immich` stack
   ```sh
   cd immich
   docker compose up -d
   ```
4. **TODO**: Create a command to start all of them together
<p align="right">(<a href="#top">back to top</a>)</p>

<!-- Service Links -->
## Service Links
1. [Portainer](https://192.168.1.118:9443/)
1. [Homer](http://192.168.1.118:8083/)
1. [Immich](http://192.168.1.118:2283/photos)
1. [File Browser](http://192.168.1.118:8082/)
1. [qBittorrent](http://192.168.1.118:8081/)
1. [Plex](http://192.168.1.118:32400/web/index.html#!/)
1. [Radarr (Movies)](http://192.168.1.118:7878/)
1. [Sonarr (TV)](http://192.168.1.118:8989/)
1. [Prowlarr](http://192.168.1.118:9696/)
1. [Jackett](http://192.168.1.118:9117/)
1. [Tautulli](http://192.168.1.118:8181/)
1. [Scrutiny](http://192.168.1.118:8084/)
1. [Your Spotify](http://192.168.1.118:3002/)
1. [Nginx Proxy Manager](http://192.168.1.118:81/)

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- ROADMAP -->
## Roadmap

- [ ] Wake On Lan support
- [ ] Save login passwords to Bitwarden
- [ ] Custom Nginx Proxy Manager theme
- [ ] Experiment with [Traefik](https://traefik.io/traefik/) for Reverse Proxy with CORS

<p align="right">(<a href="#top">back to top</a>)</p>


<!-- MARKDOWN LINKS & ASSETS -->
<!-- https://www.markdownguide.org/basic-syntax/#reference-style-links -->
[product-screenshot]: imgs/screenshot.png
