###### DevOps Beadandó – Vörös Attila Hunor - H5HKDM ######

-------------------------------------------------------------

### Alkalmazás ###

A projekt egy egyszerű **Node.js + Express** alapú „Hello-World” alkalmazást tartalmaz.

Az alkalmazás:
- Visual Studio Code alkalmazásban került kivitelezésre.
- HTTP-n elérhető:  
  **http://localhost:8080**
- Mappa struktúra:
				[.devcontainer]
					-> devcontainer.json
					-> Deckerfile
				Dockerfile
				package-lock.json
				package.json
				README
				server.js
				
-------------------------------------------------------------

### Build ###

A buildelés ebben a projektben a függőségek telepítését jelenti "npm install", amely előkészíti az alkalmazást a futtatásra. A parancs szerepel a README-ben, így a projekt más fejlesztők számára is reprodukálható.

Feltételek:
		* Node.js - telepítve legyen 						https://nodejs.org
		* Git - telepítve legyen (máskülönben elveszik sok lényeges funkció)	https://git-scm.com
		*Docker - telepítve legyen			https://www.docker.com/products/docker-desktop/
	Ha ezek a feltételek megvannak és a környezet készen áll, a következőt szükséges elvégezni.

CMD (admin) megnyitása:
------------------------------------------
git clone https://github.com/HunorGG/devops-hello-world

cd devops-hello-world

npm install

node server.js
------------------------------------------	
	Ha konténerben szeretné futtatni

docker build -t hello-devops:v1 .

docker run -p 8080:8080 hello-devops:v1
------------------------------------------
	Ha DevContainer-ben szeretné futtatni

VS Code-ban megnyitja a mappát

Bal alsó sarok → Reopen in Container

Docker felépíti az egész környezetet

Konténerben:	
		npm install
		node server.js

	És mind a három esetben a következő linken lesz elérhető: http://localhost:8080





Az alkalmazás buildelése és futtatása:

### **1) Függőségek telepítése**
```bash
npm install
