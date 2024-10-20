package com.spbpu.app.user

import com.spbpu.app.models.ModelV1 // Отдельный испорт
import com.spbpu.app.models.{ModelV1, ModelV2} // Отдельный испорт
import com.spbpu.app.models._ // Импорт всех компонент

class User {

  def create(): User = {
    import com.spbpu._ // Импорт всех объектов из пакеты com.spbpu
    new User()
  }
}