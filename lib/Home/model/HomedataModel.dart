class HomedataModel {
  HomeScreen? homeScreen;
  int? status;
  String? message;

  HomedataModel({
    this.homeScreen,
    this.status,
    this.message,
  });

  HomedataModel.fromJson(Map<String, dynamic> json) {
    homeScreen = json['homeScreen'] != null
        ? HomeScreen.fromJson(json['homeScreen'])
        : null;
    status = json['status'];
    message = json['message'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (homeScreen != null) {
      data['homeScreen'] = homeScreen!.toJson();
    }
    data['status'] = status;
    data['message'] = message;
    return data;
  }
}

class HomeScreen {
  LabTestServices? labTestServices;
  PetSymptoms? petSymptoms;
  PetBehaviors? petBehaviors;
  Banners? banners;
  PetFoodProducts? petFoodProducts;
  PetConditions? petConditions;
  PetMedicines? petMedicines;
  GroomingServices? groomingServices;
  PetAccessories? petAccessories;
  PopularServices? popularServices;
  AtHomeDoctors? atHomeDoctors;
  PetClinics? petClinics;
  PetConsultationImage? petConsultationImage;
  PetDiagnosticsImage? petDiagnosticsImage;
  PetFoodProductImage? petFoodProductImage;
  Consultation? pampersImage;

  HomeScreen({
    this.labTestServices,
    this.petSymptoms,
    this.petBehaviors,
    this.banners,
    this.petFoodProducts,
    this.petConditions,
    this.petMedicines,
    this.groomingServices,
    this.petAccessories,
    this.popularServices,
    this.atHomeDoctors,
    this.petClinics,
    this.petConsultationImage,
    this.petDiagnosticsImage,
    this.petFoodProductImage,
    this.pampersImage,
  });

  HomeScreen.fromJson(Map<String, dynamic> json) {
    labTestServices = json['labTestServices'] != null
        ? LabTestServices.fromJson(json['labTestServices'])
        : null;
    petSymptoms = json['petSymptoms'] != null
        ? PetSymptoms.fromJson(json['petSymptoms'])
        : null;
    petBehaviors = json['petBehaviors'] != null
        ? PetBehaviors.fromJson(json['petBehaviors'])
        : null;
    banners =
        json['banners'] != null ? Banners.fromJson(json['banners']) : null;
    petFoodProducts = json['petFoodProducts'] != null
        ? PetFoodProducts.fromJson(json['petFoodProducts'])
        : null;
    petConditions = json['petConditions'] != null
        ? PetConditions.fromJson(json['petConditions'])
        : null;
    petMedicines = json['petMedicines'] != null
        ? PetMedicines.fromJson(json['petMedicines'])
        : null;
    groomingServices = json['groomingServices'] != null
        ? GroomingServices.fromJson(json['groomingServices'])
        : null;
    petAccessories = json['petAccessories'] != null
        ? PetAccessories.fromJson(json['petAccessories'])
        : null;
    popularServices = json['popularServices'] != null
        ? PopularServices.fromJson(json['popularServices'])
        : null;
    atHomeDoctors = json['atHomeDoctors'] != null
        ? AtHomeDoctors.fromJson(json['atHomeDoctors'])
        : null;
    petClinics = json['petClinics'] != null
        ? PetClinics.fromJson(json['petClinics'])
        : null;
    petConsultationImage = json['petConsultationImage'] != null
        ? PetConsultationImage.fromJson(json['petConsultationImage'])
        : null;
    petDiagnosticsImage = json['petDiagnosticsImage'] != null
        ? PetDiagnosticsImage.fromJson(json['petDiagnosticsImage'])
        : null;
    petFoodProductImage = json['petFoodProductImage'] != null
        ? PetFoodProductImage.fromJson(json['petFoodProductImage'])
        : null;
    pampersImage = json['pampersImage'] != null
        ? Consultation.fromJson(json['pampersImage'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    if (labTestServices != null) {
      data['labTestServices'] = labTestServices!.toJson();
    }
    if (petSymptoms != null) {
      data['petSymptoms'] = petSymptoms!.toJson();
    }
    if (petBehaviors != null) {
      data['petBehaviors'] = petBehaviors!.toJson();
    }
    if (banners != null) {
      data['banners'] = banners!.toJson();
    }
    if (petFoodProducts != null) {
      data['petFoodProducts'] = petFoodProducts!.toJson();
    }
    if (petConditions != null) {
      data['petConditions'] = petConditions!.toJson();
    }
    if (petMedicines != null) {
      data['petMedicines'] = petMedicines!.toJson();
    }
    if (groomingServices != null) {
      data['groomingServices'] = groomingServices!.toJson();
    }
    if (petAccessories != null) {
      data['petAccessories'] = petAccessories!.toJson();
    }
    if (popularServices != null) {
      data['popularServices'] = popularServices!.toJson();
    }
    if (atHomeDoctors != null) {
      data['atHomeDoctors'] = atHomeDoctors!.toJson();
    }
    if (petClinics != null) {
      data['petClinics'] = petClinics!.toJson();
    }
    if (petConsultationImage != null) {
      data['petConsultationImage'] = petConsultationImage!.toJson();
    }
    if (petDiagnosticsImage != null) {
      data['petDiagnosticsImage'] = petDiagnosticsImage!.toJson();
    }
    if (petFoodProductImage != null) {
      data['petFoodProductImage'] = petFoodProductImage!.toJson();
    }
    if (pampersImage != null) {
      data['pampersImage'] = pampersImage!.toJson();
    }
    return data;
  }
}

class LabTestServices {
  String? labelName;
  String? labelShortDescription;
  List<LabTests>? labTests;

  LabTestServices({
    this.labelName,
    this.labelShortDescription,
    this.labTests,
  });

  LabTestServices.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['labTests'] != null) {
      labTests = <LabTests>[];
      json['labTests'].forEach((v) {
        labTests!.add(LabTests.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (labTests != null) {
      data['labTests'] = labTests!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class LabTests {
  String? labTestName;
  String? labTestUUID;
  String? description;
  int? grossPrice;
  int? netPrice;
  String? discount;

  LabTests({
    this.labTestName,
    this.labTestUUID,
    this.description,
    this.grossPrice,
    this.netPrice,
    this.discount,
  });

  LabTests.fromJson(Map<String, dynamic> json) {
    labTestName = json['labTestName'];
    labTestUUID = json['labTestUUID'];
    description = json['description'];
    grossPrice = json['grossPrice'];
    netPrice = json['netPrice'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labTestName'] = labTestName;
    data['labTestUUID'] = labTestUUID;
    data['description'] = description;
    data['grossPrice'] = grossPrice;
    data['netPrice'] = netPrice;
    data['discount'] = discount;
    return data;
  }
}

class PetSymptoms {
  String? labelName;
  String? labelShortDescription;
  List<Symptoms>? symptoms;

  PetSymptoms({
    this.labelName,
    this.labelShortDescription,
    this.symptoms,
  });

  PetSymptoms.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['symptoms'] != null) {
      symptoms = <Symptoms>[];
      json['symptoms'].forEach((v) {
        symptoms!.add(Symptoms.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (symptoms != null) {
      data['symptoms'] = symptoms!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Symptoms {
  int? symptomId;
  String? symptomName;
  String? petType;
  String? petCode;

  Symptoms({
    this.symptomId,
    this.symptomName,
    this.petType,
    this.petCode,
  });

  Symptoms.fromJson(Map<String, dynamic> json) {
    symptomId = json['symptomId'];
    symptomName = json['symptomName'];
    petType = json['petType'];
    petCode = json['petCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['symptomId'] = symptomId;
    data['symptomName'] = symptomName;
    data['petType'] = petType;
    data['petCode'] = petCode;
    return data;
  }
}

class PetBehaviors {
  String? labelName;
  String? labelShortDescription;
  List<Behaviours>? behaviours;

  PetBehaviors({
    this.labelName,
    this.labelShortDescription,
    this.behaviours,
  });

  PetBehaviors.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['behaviours'] != null) {
      behaviours = <Behaviours>[];
      json['behaviours'].forEach((v) {
        behaviours!.add(Behaviours.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (behaviours != null) {
      data['behaviours'] = behaviours!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Behaviours {
  int? behaviorId;
  String? behaviorName;
  String? petType;
  String? petCode;

  Behaviours({
    this.behaviorId,
    this.behaviorName,
    this.petType,
    this.petCode,
  });

  Behaviours.fromJson(Map<String, dynamic> json) {
    behaviorId = json['behaviorId'];
    behaviorName = json['behaviorName'];
    petType = json['petType'];
    petCode = json['petCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['behaviorId'] = behaviorId;
    data['behaviorName'] = behaviorName;
    data['petType'] = petType;
    data['petCode'] = petCode;
    return data;
  }
}

class Banners {
  String? labelName;
  String? labelShortDescription;
  List<HomeBanners>? homeBanners;

  Banners({
    this.labelName,
    this.labelShortDescription,
    this.homeBanners,
  });

  Banners.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['homeBanners'] != null) {
      homeBanners = <HomeBanners>[];
      json['homeBanners'].forEach((v) {
        homeBanners!.add(HomeBanners.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (homeBanners != null) {
      data['homeBanners'] = homeBanners!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class HomeBanners {
  int? serviceId;
  String? serviceName;
  String? bannerImage;

  HomeBanners({
    this.serviceId,
    this.serviceName,
    this.bannerImage,
  });

  HomeBanners.fromJson(Map<String, dynamic> json) {
    serviceId = json['serviceId'];
    serviceName = json['serviceName'];
    bannerImage = json['bannerImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['serviceId'] = serviceId;
    data['serviceName'] = serviceName;
    data['bannerImage'] = bannerImage;
    return data;
  }
}

class PetFoodProducts {
  String? labelName;
  String? labelShortDescription;
  List<FoodProducts>? foodProducts;

  PetFoodProducts({
    this.labelName,
    this.labelShortDescription,
    this.foodProducts,
  });

  PetFoodProducts.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['foodProducts'] != null) {
      foodProducts = <FoodProducts>[];
      json['foodProducts'].forEach((v) {
        foodProducts!.add(FoodProducts.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (foodProducts != null) {
      data['foodProducts'] = foodProducts!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class FoodProducts {
  String? productName;
  String? productImage;
  int? grossPrice;
  int? netPrice;
  String? discount;
  String? productUUID;

  FoodProducts({
    this.productName,
    this.productImage,
    this.grossPrice,
    this.netPrice,
    this.discount,
    this.productUUID,
  });

  FoodProducts.fromJson(Map<String, dynamic> json) {
    productName = json['productName'];
    productImage = json['productImage'];
    grossPrice = json['grossPrice'];
    netPrice = json['netPrice'];
    discount = json['discount'];
    productUUID = json['productUUID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['productName'] = productName;
    data['productImage'] = productImage;
    data['grossPrice'] = grossPrice;
    data['netPrice'] = netPrice;
    data['discount'] = discount;
    data['productUUID'] = productUUID;
    return data;
  }
}

class PetConditions {
  String? labelName;
  String? labelShortDescription;
  List<Conditions>? conditions;

  PetConditions({
    this.labelName,
    this.labelShortDescription,
    this.conditions,
  });

  PetConditions.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['conditions'] != null) {
      conditions = <Conditions>[];
      json['conditions'].forEach((v) {
        conditions!.add(Conditions.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (conditions != null) {
      data['conditions'] = conditions!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Conditions {
  int? conditionId;
  String? conditionName;
  String? petType;
  String? petCode;

  Conditions({
    this.conditionId,
    this.conditionName,
    this.petType,
    this.petCode,
  });

  Conditions.fromJson(Map<String, dynamic> json) {
    conditionId = json['conditionId'];
    conditionName = json['conditionName'];
    petType = json['petType'];
    petCode = json['petCode'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['conditionId'] = conditionId;
    data['conditionName'] = conditionName;
    data['petType'] = petType;
    data['petCode'] = petCode;
    return data;
  }
}

class PetMedicines {
  String? labelName;
  String? labelShortDescription;
  List<Medicines>? medicines;

  PetMedicines({
    this.labelName,
    this.labelShortDescription,
    this.medicines,
  });

  PetMedicines.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['medicines'] != null) {
      medicines = <Medicines>[];
      json['medicines'].forEach((v) {
        medicines!.add(Medicines.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (medicines != null) {
      data['medicines'] = medicines!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Medicines {
  String? medicineName;
  String? medicineImage;
  int? grossPrice;
  int? netPrice;
  String? discount;
  String? medicineUUID;

  Medicines({
    this.medicineName,
    this.medicineImage,
    this.grossPrice,
    this.netPrice,
    this.discount,
    this.medicineUUID,
  });

  Medicines.fromJson(Map<String, dynamic> json) {
    medicineName = json['medicineName'];
    medicineImage = json['medicineImage'];
    grossPrice = json['grossPrice'];
    netPrice = json['netPrice'];
    discount = json['discount'];
    medicineUUID = json['medicineUUID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['medicineName'] = medicineName;
    data['medicineImage'] = medicineImage;
    data['grossPrice'] = grossPrice;
    data['netPrice'] = netPrice;
    data['discount'] = discount;
    data['medicineUUID'] = medicineUUID;
    return data;
  }
}

class GroomingServices {
  String? labelName;
  String? labelShortDescription;
  List<Grooming>? grooming;

  GroomingServices({
    this.labelName,
    this.labelShortDescription,
    this.grooming,
  });

  GroomingServices.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['grooming'] != null) {
      grooming = <Grooming>[];
      json['grooming'].forEach((v) {
        grooming!.add(Grooming.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (grooming != null) {
      data['grooming'] = grooming!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Grooming {
  String? packageName;
  int? petsaviourServiceId;
  String? packageImage;
  String? elapsedTime;
  String? packageUUID;
  String? aboutPackage;
  List<String>? packageServices;
  int? grossPrice;
  int? netPrice;
  String? discount;

  Grooming(
      {this.packageName,
      this.petsaviourServiceId,
      this.packageImage,
      this.elapsedTime,
      this.packageUUID,
      this.aboutPackage,
      this.packageServices,
      this.grossPrice,
      this.netPrice,
      this.discount});

  Grooming.fromJson(Map<String, dynamic> json) {
    packageName = json['packageName'];
    petsaviourServiceId = json['petsaviourServiceId'];
    packageImage = json['packageImage'];
    elapsedTime = json['elapsedTime'];
    packageUUID = json['packageUUID'];
    aboutPackage = json['aboutPackage'];
    packageServices = json['packageServices'].cast<String>();
    grossPrice = json['grossPrice'];
    netPrice = json['netPrice'];
    discount = json['discount'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['packageName'] = packageName;
    data['petsaviourServiceId'] = petsaviourServiceId;
    data['packageImage'] = packageImage;
    data['elapsedTime'] = elapsedTime;
    data['packageUUID'] = packageUUID;
    data['aboutPackage'] = aboutPackage;
    data['packageServices'] = packageServices;
    data['grossPrice'] = grossPrice;
    data['netPrice'] = netPrice;
    data['discount'] = discount;
    return data;
  }
}

class PetAccessories {
  String? labelName;
  String? labelShortDescription;
  List<Accessories>? accessories;

  PetAccessories(
      {this.labelName, this.labelShortDescription, this.accessories});

  PetAccessories.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['accessories'] != null) {
      accessories = <Accessories>[];
      json['accessories'].forEach((v) {
        accessories!.add(new Accessories.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (accessories != null) {
      data['accessories'] = accessories!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Accessories {
  String? accessoriesName;
  String? accessoriesImage;
  int? grossPrice;
  int? netPrice;
  String? discount;
  String? accessoriesUUID;

  Accessories(
      {this.accessoriesName,
      this.accessoriesImage,
      this.grossPrice,
      this.netPrice,
      this.discount,
      this.accessoriesUUID});

  Accessories.fromJson(Map<String, dynamic> json) {
    accessoriesName = json['accessoriesName'];
    accessoriesImage = json['accessoriesImage'];
    grossPrice = json['grossPrice'];
    netPrice = json['netPrice'];
    discount = json['discount'];
    accessoriesUUID = json['accessoriesUUID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['accessoriesName'] = accessoriesName;
    data['accessoriesImage'] = accessoriesImage;
    data['grossPrice'] = grossPrice;
    data['netPrice'] = netPrice;
    data['discount'] = discount;
    data['accessoriesUUID'] = accessoriesUUID;
    return data;
  }
}

class PopularServices {
  String? labelName;
  String? labelShortDescription;
  List<Services>? services;

  PopularServices({
    this.labelName,
    this.labelShortDescription,
    this.services,
  });

  PopularServices.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['services'] != null) {
      services = <Services>[];
      json['services'].forEach((v) {
        services!.add(Services.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (services != null) {
      data['services'] = services!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Services {
  int? serviceId;
  String? serviceName;
  String? mobileImageUrl;
  String? webImageUrl;
  String? serviceUUID;

  Services({
    this.serviceId,
    this.serviceName,
    this.mobileImageUrl,
    this.webImageUrl,
    this.serviceUUID,
  });

  Services.fromJson(Map<String, dynamic> json) {
    serviceId = json['serviceId'];
    serviceName = json['serviceName'];
    mobileImageUrl = json['mobileImageUrl'];
    webImageUrl = json['webImageUrl'];
    serviceUUID = json['serviceUUID'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['serviceId'] = serviceId;
    data['serviceName'] = serviceName;
    data['mobileImageUrl'] = mobileImageUrl;
    data['webImageUrl'] = webImageUrl;
    data['serviceUUID'] = serviceUUID;
    return data;
  }
}

class AtHomeDoctors {
  String? labelName;
  String? labelShortDescription;
  List<AtHomeDoctor>? atHomeDoctors;

  AtHomeDoctors({
    this.labelName,
    this.labelShortDescription,
    this.atHomeDoctors,
  });

  AtHomeDoctors.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['atHomeDoctors'] != null) {
      atHomeDoctors = <AtHomeDoctor>[];
      json['atHomeDoctors'].forEach((v) {
        atHomeDoctors!.add(AtHomeDoctor.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (atHomeDoctors != null) {
      data['atHomeDoctors'] = atHomeDoctors!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class AtHomeDoctor {
  String? doctorName;
  String? doctorImage;
  String? clinic;
  String? experience;
  String? rating;
  String? patientStories;
  String? nextAvaliableSlot;

  AtHomeDoctor(
      {this.doctorName,
      this.doctorImage,
      this.clinic,
      this.experience,
      this.rating,
      this.patientStories,
      this.nextAvaliableSlot});

  AtHomeDoctor.fromJson(Map<String, dynamic> json) {
    doctorName = json['doctorName'];
    doctorImage = json['doctorImage'];
    clinic = json['clinic'];
    experience = json['experience'];
    rating = json['rating'];
    patientStories = json['patientStories'];
    nextAvaliableSlot = json['nextAvaliableSlot'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['doctorName'] = doctorName;
    data['doctorImage'] = doctorImage;
    data['clinic'] = clinic;
    data['experience'] = experience;
    data['rating'] = rating;
    data['patientStories'] = patientStories;
    data['nextAvaliableSlot'] = nextAvaliableSlot;
    return data;
  }
}

class PetClinics {
  String? labelName;
  String? labelShortDescription;
  List<Clinics>? clinics;

  PetClinics({
    this.labelName,
    this.labelShortDescription,
    this.clinics,
  });

  PetClinics.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    if (json['clinics'] != null) {
      clinics = <Clinics>[];
      json['clinics'].forEach((v) {
        clinics!.add(Clinics.fromJson(v));
      });
    }
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (clinics != null) {
      data['clinics'] = clinics!.map((v) => v.toJson()).toList();
    }
    return data;
  }
}

class Clinics {
  String? clinicName;
  String? clinicImage;

  Clinics({
    this.clinicName,
    this.clinicImage,
  });

  Clinics.fromJson(Map<String, dynamic> json) {
    clinicName = json['clinicName'];
    clinicImage = json['clinicImage'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['clinicName'] = clinicName;
    data['clinicImage'] = clinicImage;
    return data;
  }
}

class PetConsultationImage {
  String? labelName;
  String? labelShortDescription;
  Consultation? consultation;

  PetConsultationImage({
    this.labelName,
    this.labelShortDescription,
    this.consultation,
  });

  PetConsultationImage.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    consultation = json['consultation'] != null
        ? Consultation.fromJson(json['consultation'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (consultation != null) {
      data['consultation'] = consultation!.toJson();
    }
    return data;
  }
}

class Consultation {
  String? imageType;
  String? imageUrl;

  Consultation({
    this.imageType,
    this.imageUrl,
  });

  Consultation.fromJson(Map<String, dynamic> json) {
    imageType = json['imageType'];
    imageUrl = json['imageUrl'];
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['imageType'] = imageType;
    data['imageUrl'] = imageUrl;
    return data;
  }
}

class PetDiagnosticsImage {
  String? labelName;
  String? labelShortDescription;
  Consultation? diagnostics;

  PetDiagnosticsImage({
    this.labelName,
    this.labelShortDescription,
    this.diagnostics,
  });

  PetDiagnosticsImage.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    diagnostics = json['diagnostics'] != null
        ? Consultation.fromJson(json['diagnostics'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (diagnostics != null) {
      data['diagnostics'] = diagnostics!.toJson();
    }
    return data;
  }
}

class PetFoodProductImage {
  String? labelName;
  String? labelShortDescription;
  Consultation? foodProducts;

  PetFoodProductImage({
    this.labelName,
    this.labelShortDescription,
    this.foodProducts,
  });

  PetFoodProductImage.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    foodProducts = json['foodProducts'] != null
        ? Consultation.fromJson(json['foodProducts'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (foodProducts != null) {
      data['foodProducts'] = foodProducts!.toJson();
    }
    return data;
  }
}

class PampersImage {
  String? labelName;
  String? labelShortDescription;
  Consultation? pampersImage;

  PampersImage({
    this.labelName,
    this.labelShortDescription,
    this.pampersImage,
  });

  PampersImage.fromJson(Map<String, dynamic> json) {
    labelName = json['labelName'];
    labelShortDescription = json['labelShortDescription'];
    pampersImage = json['pampersImage'] != null
        ? Consultation.fromJson(json['pampersImage'])
        : null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};
    data['labelName'] = labelName;
    data['labelShortDescription'] = labelShortDescription;
    if (pampersImage != null) {
      data['pampersImage'] = pampersImage!.toJson();
    }
    return data;
  }
}
