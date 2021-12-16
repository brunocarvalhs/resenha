import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_modular/flutter_modular.dart';
import 'package:mobx/mobx.dart';
import 'package:resenha/app/modules/events/domain/usecases/register_event.dart';
import 'package:resenha/app/modules/events/domain/usecases/register_image.dart';
import 'package:resenha/app/modules/events/infra/models/category_model.dart';
import 'package:resenha/app/modules/events/infra/models/event_model.dart';
import 'package:resenha/app/shared/utils/assets_utils.dart';
import 'package:uuid/uuid.dart';

part 'register_event_store.g.dart';

class RegisterEventStore = _RegisterEventStoreBase with _$RegisterEventStore;

abstract class _RegisterEventStoreBase with Store {
  final Uuid uuid;
  final RegistersEvent registersEvent;
  final RegisterImage registerImage;

  _RegisterEventStoreBase(this.registersEvent, this.uuid, this.registerImage);

  @observable
  File? _image;

  @action
  void setImage(File? value) => _image = value;

  @computed
  File? get getImage => _image;

  @computed
  bool get isImage => _image != null;

  @observable
  CategoryModel? _category;

  @action
  void setCategory(CategoryModel? value) => _category = value;

  @computed
  CategoryModel? get getCategory => _category;

  @observable
  String? _name;

  @action
  void setName(String? value) => _name = value;

  @computed
  String get getName => _name ?? "";

  @observable
  String? _discrible;

  @action
  void setDiscrible(String? value) => _discrible = value;

  @computed
  String get getDiscrible => _discrible ?? "";

  @observable
  DateTime _date = DateTime.now();

  @action
  void setDate(DateTime? date) => _date = date ?? DateTime.now();
  @computed
  DateTime get getDate => DateTime(
        _date.year,
        _date.month,
        _date.day,
        _time.hour,
        _time.minute,
        _date.second,
        _date.millisecond,
        _date.microsecond,
      );

  @observable
  TimeOfDay _time = TimeOfDay.now();
  @action
  void setTime(TimeOfDay? time) => _time = time ?? TimeOfDay.now();

  @observable
  bool _isPrivate = false;
  @action
  void setPrivateEvent(bool value) => _isPrivate = value;
  @computed
  bool get isPrivate => _isPrivate;

  @observable
  bool _isInvite = true;
  @action
  void setInviteEvent(bool value) => _isInvite = value;
  @computed
  bool get isInvite => _isInvite;

  @observable
  double _latitude = 0;
  @observable
  double _longitude = 0;

  @action
  void setPoint(double latitude, double longitude) {
    _latitude = latitude;
    _longitude = longitude;
  }

  @computed
  double get getLatitude => _latitude;

  @computed
  double get getLongitude => _longitude;

  Future<void> register() async {
    final result = await registerImage(getImage!);
    return result.fold((l) => "", (uri) async {
      var event = EventModel(
        id: uuid.v4(),
        title: getName,
        description: getDiscrible,
        category: getCategory?.name ?? "",
        date: getDate,
        image: uri,
        private: false,
        invite: false,
        members: const [],
        latitude: getLatitude,
        longitude: getLongitude,
      );
      var result = await registersEvent(event);
      result.fold((failure) {}, (list) {
        clear();
        Modular.to.navigate("/events/");
      });
    });
  }

  void clear() {
    setImage(null);
    setName(null);
    setDiscrible(null);
    setCategory(null);
    setDate(null);
    setPoint(0, 0);
  }
}
