# Architecture Diagram

<img width="1196" alt="image" src="https://github.com/sumitgupta7060/kpmg/assets/13946677/cf9a2402-081c-4ed8-bb25-98d951055210">



# django-todo App
A simple todo app built with django

<img width="1276" alt="image" src="https://github.com/sumitgupta7060/kpmg/assets/13946677/75c8f834-42e1-4e35-98ee-9e569b110470">

**Steps to run this locally: (Non automated steps)**


You will need django to be installed in you computer to run this app. Head over to https://www.djangoproject.com/download/ for the download guide

Once you have downloaded django, go to the cloned repo directory and run the following command

```bash
$ python manage.py makemigrations
```

This will create all the migrations file (database migrations) required to run this App.

Now, to apply this migrations run the following command
```bash
$ python manage.py migrate
```

One last step and then our todo App will be live. We need to create an admin user to run this App. On the terminal, type the following command and provide username, password and email for the admin user
```bash
$ python manage.py createsuperuser
```

That was pretty simple, right? Now let's make the App live. We just need to start the server now and then we can start using our simple todo App. Start the server by following command

```bash
$ python manage.py runserver
```

Once the server is hosted, head over to http://127.0.0.1:8000/todos for the App.

Cheers and Happy Coding :)
