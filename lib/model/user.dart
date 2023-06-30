class User {
  final String Demo_imagPath;
  final String Demo_name;
  final String Demo_postcode;
  final String Demo_NationalID;
  final String Demo_FatherName;
  final String Demo_BirthDay;
  final String Demo_Age;
  final String Demo_Gender;
  final String Demo_HospitalAccept;
  final String Demo_PartAccept;
  final String Cli_TypeOfDisease;
  final String Cli_levelOfCare;
  final String Cli_DrugSensivity;
  final String Cli_transfosi;
  final String Cli_diet;
  final String Cli_TypeOfActivity;
  final String Cli_Connection;
  final String Cli_Wounds;
  final String Pre_disease;
  final String Pre_drugCare;
  final String Pre_HospitalRecords;
  final String Current_treatmentProces;
  final String Current_Surgeries;
  final String Current_Specific_Symtams;
  final bool isDarkMode;
  const User(
      {required this.Demo_imagPath,
      required this.Demo_name,
      required this.Demo_postcode,
      required this.Demo_NationalID,
      required this.Demo_FatherName,
      required this.Demo_BirthDay,
      required this.Demo_Age,
      required this.Demo_Gender,
      required this.Demo_HospitalAccept,
      required this.Demo_PartAccept,
      required this.Cli_TypeOfDisease,
      required this.Cli_levelOfCare,
      required this.Cli_DrugSensivity,
      required this.Cli_transfosi,
      required this.Cli_diet,
      required this.Cli_TypeOfActivity,
      required this.Cli_Connection,
      required this.Cli_Wounds,
      required this.Pre_disease,
      required this.Pre_drugCare,
      required this.Pre_HospitalRecords,
      required this.Current_treatmentProces,
      required this.Current_Surgeries,
      required this.Current_Specific_Symtams,
      required this.isDarkMode});

  factory User.fromJson(Map<String, dynamic> json) {
    return User(
        Demo_imagPath: "${json['demoIMG']}",
        Demo_name: "${json['demoName']}",
        Demo_postcode: "${json['demoPostCode']}",
        Demo_NationalID: "${json['demoNationalID']}",
        Demo_FatherName: "${json['demoFatherName']}",
        Demo_BirthDay: "${json['demoBirthday']}",
        Demo_Age: "${json['demoAge']}",
        Demo_Gender: "${json['demoGender']}",
        Demo_HospitalAccept: "${json['demoHospitalAccept']}",
        Demo_PartAccept: "${json['demoPartAccept']}",
        Cli_TypeOfDisease: "${json['cliTypeOfDisease']}",
        Cli_levelOfCare: "${json['cliLevelOfCare']}",
        Cli_DrugSensivity: "${json['cliDrugSensivity']}",
        Cli_transfosi: "${json['cliTransfosi']}",
        Cli_diet: "${json['cliDiet']}",
        Cli_TypeOfActivity: "${json['cliTypeOfActivity']}",
        Cli_Connection: "${json['cliConnection']}",
        Cli_Wounds: "${json['cliWounds']}",
        Pre_disease: "${json['preDisease']}",
        Pre_drugCare: "${json['preDrugCare']}",
        Pre_HospitalRecords: "${json['preHospitalRecords']}",
        Current_treatmentProces: "${json['curTreatment']}",
        Current_Surgeries: "${json['curSurgeries']}",
        Current_Specific_Symtams: "${json['curSpecific']}",
        isDarkMode: false);
  }

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = new Map<String, dynamic>();
    data['demoIMG'] = this.Demo_imagPath;
    data['demoName'] = this.Demo_name;
    data['demoPostCode'] = this.Demo_postcode;
    data['demoNationalID'] = this.Demo_NationalID;
    data['demoFatherName'] = this.Demo_BirthDay;
    data['demoAge'] = this.Demo_Age;
    data['demoGender'] = this.Demo_Gender;
    data['demoHospitalAccept'] = this.Demo_HospitalAccept;
    data['demoPartAccept'] = this.Demo_PartAccept;

    data['cliTypeOfDisease'] = this.Cli_TypeOfDisease;
    data['cliLevelOfCare'] = this.Cli_levelOfCare;
    data['cliDrugSensivity'] = this.Cli_DrugSensivity;
    data['cliTransfosi'] = this.Cli_transfosi;
    data['cliDiet'] = this.Cli_diet;
    data['cliTypeOfActivity'] = this.Cli_TypeOfActivity;
    data['cliConnection'] = this.Cli_Connection;
    data['cliWounds'] = this.Cli_Wounds;

    data['preDisease'] = this.Pre_disease;
    data['preDrugCare'] = this.Pre_drugCare;
    data['preHospitalRecords'] = this.Pre_HospitalRecords;

    data['curTreatment'] = this.Current_treatmentProces;
    data['curSurgeries'] = this.Current_Surgeries;
    data['curSpecific'] = this.Current_Specific_Symtams;
    // "demoIMG": Demo_imagPath,
    // "demoName": Demo_name,
    // "demoPostCode": Demo_postcode,
    // "demoNationalID": Demo_NationalID,
    // "demoFatherName": Demo_FatherName,
    // "demoBirthday": Demo_BirthDay,
    // "demoAge": Demo_Age,
    // "demoGender": Demo_Gender,
    // "demoHospitalAccept": Demo_HospitalAccept,
    // "demoPartAccept": Demo_PartAccept,
    // "cliTypeOfDisease": Cli_TypeOfDisease,
    // "cliLevelOfCare": Cli_levelOfCare,
    // "cliDrugSensivity": Cli_DrugSensivity,
    // "cliTransfosi": Cli_transfosi,
    // "cliDiet": Cli_diet,
    // "cliTypeOfActivity": Cli_TypeOfActivity,
    // "cliConnection": Cli_Connection,
    // "cliWounds": Cli_Wounds,
    // "preDisease": Pre_disease,
    // "preDrugCare": Pre_drugCare,
    // "preHospitalRecords": Pre_HospitalRecords,
    // "curTreatment": Current_treatmentProces,
    // "curSurgeries": Current_Surgeries,
    // "curSpecific": Current_Specific_Symtams,
    return data;
  }
}
