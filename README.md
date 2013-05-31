# Meran cookbook

Instala un Meran usando el instalador del producto

## Usando Vagrant para probarlo rápidamente

Para probar el producto en forma rápida, sugerimos:

* Instalar "Vagrant":http://www.vagrantup.com/ siguiendo las instrucciones del
  producto

* Instalar el plugin de Berkshelf 

```
vagrant plugin install vagrant-berkshelf
```

* Clonar este repo

```
git clone https://github.com/Desarrollo-CeSPI/meran_cookbook.git
```

* Iniciar la máquina virtual
```
cd choique_cookbook
vagrant up
```

* Probarlo en un navegador ingresando a:

  * Acceder al catalogo publico: http://33.33.33.11
  * Acceder al backend de administracion: https://33.33.33.11
    * El usuario y contraseña por defecto es: `admin`

>La dirección ip puede cambiarse editando Vagrantfile

Se provee además un ejemplo de Vagrantfile para utilizar meran en Amazon EC2

# Requerimientos

Este cookbook utiliza, y por tanto depende de los siguientes cookbooks:

* apt

# Uso

Solo tiene una receta: `default` que hace todo

# Attributos

Los atributos a cambiar son:

```ruby
default[:meran][:instance_name] = "vagrant"
default[:meran][:version] = "meranunlp-v0.9.4-desatendido.tar.gz"
```
# Author

Author:: Christian A. Rodriguez(<car@cespi.unlp.edu.ar>)
