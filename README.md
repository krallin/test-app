# ![](https://raw.github.com/aptible/straptible/master/lib/straptible/rails/templates/public.api/icon-60px.png) aptible/test-app

A sample Web application to test Aptible's deploy process.

## Testing

    git clone git@github.com:aptible/test-app.git
    cd test-app/

    aptible create-app test-app
    git remote add aptible git@aptible.com:test-app.git
    git push aptible master
