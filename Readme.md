# OCP Workshop 01

## Required accounts
* www.github.com
* www.quay.io
* www.openshift.com

## Fork the example code
* Login to https://github.com via your web browser of choice
* Go to [this repo](https://github.com/zews79/workshop) and click the **Fork** button in the upper right hand corner of the page to fork the example code to your account

## Build the container with Quay.io
* Login to https://quay.io
* Select **+ Create New Repository** in the upper right
* Enther a name for the repository
* Select **Public**
* Select **Link to a GitHub Repository Push**
* Select **Create Public Repository**
* On the next screen select your github organization and click **continue**
* Select the **workshop** repository and click **continue**
* Select **Trigger for all branches and tags (default)** and click continue
* Select **/Dockerfil** from the drop down and click **continue**
* Select **/** as the context and click **continue**
* Click **Continue** two more times for the robot account and ready to go
* Click **return to your_account/your_repo** in the bottom right
* Click **Start New Build** then **Run Trigger Now**
* Select **master** from the drop down and click **Start Build**
* In a moment this will start a new build, if it doesn't show on the screen refresh the page

## Watch the build process
* Click on the build id number link
* When the build is complete your should see **Dockerfile build completed and pushed** at the bottom of the output

## Get the container name
* Click the **Repositories** link at the top of the page then click the link for the repository you just created
* On the right side of the page you'll see a link similar to **docker pull quay.io/YOUR_USER/YOUR_REPO**
* They way you'll reference your container is **quay.io/YOUR_USER/YOUR_REPO**

## Deploy the container in OCP
* Login to https://www.openshift.com
* Click **Open Web Console**
* Click **Create Project**
* Enter a name and click **Create**
* Click **Deploy Image**
* In the **Image Name** field enter the name of the container you created on quay.io **quay.io/YOUR_USER/YOUR_REPO**
* Click the search button and in a moment it will display information about your container image
* Click **Deploy**
* Click **Workloads** on the left side then **Pods**
* When complete your should see one pod in a **Running** status

## Create a route
* On the left click **Networking** then **Routes**
* Click **Create Route**
* Enter a name for the route
* Select the service from the drop down
* Select the port from the drop down
* Click **Create**
* Click the link in the **Location** field and you should see your Hello World web page
