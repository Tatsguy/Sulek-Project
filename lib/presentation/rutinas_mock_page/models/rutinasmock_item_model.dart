/// This class is used in the [rutinasmock_item_widget] screen.
class RutinasmockItemModel {
  RutinasmockItemModel({
    this.miRutina,
    this.dasCounter,
    this.id,
  }) {
    miRutina = miRutina ?? "Mi rutina";
    dasCounter = dasCounter ?? "5 días";
    id = id ?? "";
  }

  String? miRutina;

  String? dasCounter;

  String? id;
}
