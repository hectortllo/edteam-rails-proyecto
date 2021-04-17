# Proyecto del curso de RoR desde 0

#### INFORMACIÓN IMPORTANTE

Para poder agregar esta parte a tu proyecto, debes llegar al video final del curso. Sino, no entenderás de qué estoy hablando.

Si lo que quieres es ver la solución al reto, debes ir a la rama llamada 'rooms'. Ahí está el código agregado.
En este archivo estará la explicación de lo que debes hacer para solucionar el reto.

##### Los archivos a modificar son 4:

- app/views/rooms/index.html.erb
- app/views/rooms/show.html.erb
- app/controllers/rooms_controller.rb
- config/routes.rb

Los cambios fueron:

- routes.rb
  - Se cambió la forma de `resources :rooms`
- rooms_controller
  - Se agregó otro método: `reserve`
  - Se agregó el método `reserve` al callback `before_action`
- index.html.erb
  - Se editó el botón para 'Apartar' una habitación
- show.html.erb
  - Se editó el botón para 'Apartar' una habitación
