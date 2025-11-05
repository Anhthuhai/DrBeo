import 'package:flutter/material.dart';
import '../../../core/theme/app_theme.dart';
import '../../../l10n/app_localizations.dart';

class MedicalReferencesPage extends StatelessWidget {
  const MedicalReferencesPage({super.key});

  @override
  Widget build(BuildContext context) {
    final l10n = AppLocalizations.of(context)!;
    
    return Scaffold(
      appBar: AppBar(
        title: Text(l10n.medical_references_title),
        backgroundColor: AppTheme.primaryBlue,
        foregroundColor: Colors.white,
      ),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            _buildDisclaimer(l10n),
            const SizedBox(height: 24),
            _buildReferencesSection(l10n),
          ],
        ),
      ),
    );
  }

  Widget _buildDisclaimer(AppLocalizations l10n) {
    return Card(
      color: Colors.orange.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.warning, color: Colors.orange.shade700),
                const SizedBox(width: 8),
                Text(
                  l10n.medical_disclaimer_title,
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              l10n.medical_disclaimer_content,
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReferencesSection(AppLocalizations l10n) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(
          l10n.medical_references_title,
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
            color: AppTheme.primaryBlue,
          ),
        ),
        const SizedBox(height: 16),
        
        // Determine language and show appropriate references
        _buildClinicalScoringSection(l10n),
        _buildLabAnalysisSection(l10n),
        _buildUnitConverterSection(l10n),
        
        const SizedBox(height: 24),
        
        _buildProfessionalOrganizations(l10n),
        
        const SizedBox(height: 24),
        
        _buildAppFeatures(l10n),
      ],
    );
  }

  Widget _buildClinicalScoringSection(AppLocalizations l10n) {
    // Check if current locale is Vietnamese
    final isVietnamese = l10n.localeName == 'vi';
    
    return _buildReferenceCategory(
      isVietnamese ? 'Hệ thống tính điểm lâm sàng' : 'Clinical Scoring Systems',
      [
        'Glasgow Coma Scale: Teasdale G, Jennett B. Assessment of coma and impaired consciousness. Lancet. 1974;2(7872):81-84.',
        'APACHE II Score: Knaus WA, et al. APACHE II: a severity of disease classification system. Crit Care Med. 1985;13(10):818-829.',
        'SOFA Score: Vincent JL, et al. The SOFA (Sepsis-related Organ Failure Assessment) score. Intensive Care Med. 1996;22(7):707-710.',
        'SAPS II: Le Gall JR, et al. A new Simplified Acute Physiology Score (SAPS II). JAMA. 1993;270(24):2957-2963.',
        'NIHSS: Brott T, et al. Measurements of acute cerebral infarction. Stroke. 1989;20(7):864-70.',
        'CHA2DS2-VASc: Lip GY, et al. Refining clinical risk stratification for predicting stroke. Chest. 2010;137(2):263-72.',
        'CURB-65: Lim WS, et al. Defining community acquired pneumonia severity. Thorax. 2003;58(5):377-82.',
        'GRACE Score: Fox KA, et al. Prediction of risk of death and myocardial infarction. BMJ. 2006;333(7578):1091.',
        'TIMI Score: Antman EM, et al. The TIMI risk score for unstable angina/non-ST elevation MI. JAMA. 2000;284(7):835-42.',
        'MELD Score: Kamath PS, et al. A model to predict survival in patients with end-stage liver disease. Hepatology. 2001;33(2):464-70.',
        'Child-Pugh Classification: Pugh RN, et al. Transection of the oesophagus for bleeding oesophageal varices. Br J Surg. 1973;60(8):646-9.',
        'Wells DVT Score: Wells PS, et al. Evaluation of D-dimer in the diagnosis of suspected deep-vein thrombosis. N Engl J Med. 2003;349(13):1227-35.',
        'HAS-BLED Score: Pisters R, et al. A novel user-friendly score (HAS-BLED) to assess 1-year risk of major bleeding. Chest. 2010;138(5):1093-100.',
        'CRUSADE Bleeding Risk: Subherwal S, et al. Baseline risk of major bleeding in non-ST-segment-elevation myocardial infarction. Circulation. 2009;119(14):1873-82.',
        'IMPROVE Bleeding Risk: Hostler DC, et al. Validation of the International Medical Prevention Registry. Chest. 2016;149(2):372-9.',
        'Padua Prediction Score: Barbar S, et al. A risk assessment model for the identification of hospitalized medical patients at risk for venous thromboembolism. J Thromb Haemost. 2010;8(11):2450-7.',
        'RASS Score: Sessler CN, et al. The Richmond Agitation-Sedation Scale. Am J Respir Crit Care Med. 2002;166(10):1338-44.',
        'CAM-ICU: Ely EW, et al. Evaluation of delirium in critically ill patients. Crit Care Med. 2001;29(7):1370-9.',
        'ASPECTS Score: Barber PA, et al. Validity and reliability of a quantitative computed tomography score. Lancet. 2000;355(9216):1670-4.',
        'RACE Scale: Pérez de la Ossa N, et al. Design and validation of a prehospital stroke scale. Stroke. 2014;45(1):87-91.',
        'ABCD2 Score: Johnston SC, et al. Validation and refinement of scores to predict very early stroke risk. Lancet. 2007;369(9558):283-92.',
        'qSOFA Score: Singer M, et al. The Third International Consensus Definitions for Sepsis. JAMA. 2016;315(8):801-10.',
        'PSI/PORT Score: Fine MJ, et al. A prediction rule to identify low-risk patients with community-acquired pneumonia. N Engl J Med. 1997;336(4):243-50.',
        'Modified Early Warning Score (MEWS): Subbe CP, et al. Validation of a modified Early Warning Score. QJM. 2001;94(10):521-6.',
        'Pediatric Early Warning Score (PEWS): Monaghan A. Detecting and managing deterioration in children. Paediatr Nurs. 2005;17(1):32-5.',
        'DAPT Score: Yeh RW, et al. Development and validation of a prediction rule for benefit and harm of dual antiplatelet therapy. JAMA. 2016;315(16):1735-49.',
        'Revised Cardiac Risk Index: Lee TH, et al. Derivation and prospective validation of a simple index. Circulation. 1999;100(10):1043-9.',
        'ASA Physical Status Classification: Saklad M. Grading of patients for surgical procedures. Anesthesiology. 1941;2(3):281-4.',
        'Surgical Apgar Score: Gawande AA, et al. An Apgar score for surgery. J Am Coll Surg. 2007;204(2):201-8.',
        'Ranson Criteria: Ranson JH, et al. Prognostic signs and the role of operative management in acute pancreatitis. Surg Gynecol Obstet. 1974;139(1):69-81.',
        'Modified Sgarbossa Criteria: Smith SW, et al. Diagnosis of ST-elevation myocardial infarction with the ST-elevation to S-wave ratio. Ann Emerg Med. 2012;60(6):766-76.',
        'Creatinine Clearance (Cockcroft-Gault): Cockcroft DW, Gault MH. Prediction of creatinine clearance from serum creatinine. Nephron. 1976;16(1):31-41.',
        'MDRD GFR: Levey AS, et al. A more accurate method to estimate glomerular filtration rate. Ann Intern Med. 1999;130(6):461-70.',
      ],
    );
  }

  Widget _buildLabAnalysisSection(AppLocalizations l10n) {
    final isVietnamese = l10n.localeName == 'vi';
    
    return _buildReferenceCategory(
      isVietnamese ? 'Phân tích xét nghiệm' : 'Laboratory Analysis',
      [
        'Clinical Chemistry: Principles, Techniques, and Correlations. 8th Edition. Wolters Kluwer. 2017.',
        'Henry\'s Clinical Diagnosis and Management by Laboratory Methods. 23rd Edition. Elsevier. 2016.',
        'Arterial Blood Gas Analysis: Clinical Application and Case Studies. Respiratory Care. 2019;64(10):1288-1295.',
        'West JB. Respiratory Physiology: The Essentials. 10th ed. 2016.',
        'Kacmarek RM, et al. Egan\'s Fundamentals of Respiratory Care. 12th ed. 2020.',
        'Rose BD, Post TW. Clinical Physiology of Acid-Base and Electrolyte Disorders. 5th ed. 2001.',
        'Simerville JA, et al. Urinalysis: a comprehensive review. Am Fam Physician. 2005;71(6):1153-62.',
        'Fogazzi GB, et al. Urinalysis: core curriculum 2008. Am J Kidney Dis. 2008;51(6):1052-67.',
        'Dufour DR, et al. Diagnosis and monitoring of hepatic injury. I. Performance characteristics of laboratory tests. Clin Chem. 2000;46(12):2027-49.',
        'Pratt DS, Kaplan MM. Evaluation of abnormal liver-enzyme results in asymptomatic patients. N Engl J Med. 2000;342(17):1266-71.',
        'Light RW, et al. Pleural effusions: the diagnostic separation of transudates and exudates. Ann Intern Med. 1972;77(4):507-13.',
        'Heffner JE, et al. Pleural fluid chemical analysis in parapneumonic effusions. Am J Respir Crit Care Med. 1995;151(6):1700-8.',
        'Runyon BA, et al. The serum-ascites albumin gradient is superior to the exudate-transudate concept. Ann Intern Med. 1992;117(3):215-20.',
        'Nayar M, et al. SAAG and cholesterol levels in ascitic fluid for differential diagnosis of ascites. Indian J Gastroenterol. 2008;27(3):119-21.',
        'Steele RW, et al. Usefulness of scanning electron microscopy for determining the etiology of cerebrospinal fluid pleocytosis. J Pediatr. 1986;108(3):373-7.',
        'Tunkel AR, et al. The management of encephalitis: clinical practice guidelines by the Infectious Diseases Society of America. Clin Infect Dis. 2008;47(3):303-27.',
      ],
    );
  }

  Widget _buildUnitConverterSection(AppLocalizations l10n) {
    final isVietnamese = l10n.localeName == 'vi';
    
    return _buildReferenceCategory(
      isVietnamese ? 'Chuyển đổi đơn vị y khoa' : 'Medical Unit Converter',
      [
        'World Health Organization BMI Classification. 2004.',
        'DuBois D, DuBois EF. A formula to estimate the approximate surface area if height and weight be known. Arch Intern Med. 1916;17(6_2):863-71.',
        'International System of Units (SI). Bureau International des Poids et Mesures. 2019.',
        'Clinical Laboratory Standards Institute (CLSI). Units of Measure for Clinical Laboratory Data. CLSI C12-A2. 2006.',
        'International Federation of Clinical Chemistry and Laboratory Medicine (IFCC). Approved recommendation on quantities and units in clinical chemistry. Clin Chim Acta. 1987;165(1):1-35.',
      ],
    );
  }

  Widget _buildProfessionalOrganizations(AppLocalizations l10n) {
    final isVietnamese = l10n.localeName == 'vi';
    
    return Card(
      color: Colors.blue.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              isVietnamese ? 'Tổ chức chuyên môn' : 'Professional Organizations',
              style: TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
                color: AppTheme.primaryBlue,
              ),
            ),
            const SizedBox(height: 8),
            const Text(
              '• Society of Critical Care Medicine (SCCM)\n'
              '• American College of Emergency Physicians (ACEP)\n'
              '• European Society of Intensive Care Medicine (ESICM)\n'
              '• World Health Organization (WHO)\n'
              '• International Federation of Clinical Chemistry (IFCC)\n'
              '• Clinical Laboratory Standards Institute (CLSI)',
              style: TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildAppFeatures(AppLocalizations l10n) {
    final isVietnamese = l10n.localeName == 'vi';
    
    return Card(
      color: Colors.green.shade50,
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                Icon(Icons.check_circle, color: Colors.green.shade700),
                const SizedBox(width: 8),
                Text(
                  isVietnamese ? 'Tính năng chính của Dr Bèo' : 'Dr Bèo Key Features',
                  style: TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.bold,
                    color: Colors.green.shade700,
                  ),
                ),
              ],
            ),
            const SizedBox(height: 12),
            Text(
              isVietnamese 
                ? '✅ 34+ Hệ thống tính điểm lâm sàng (Glasgow Coma Scale, APACHE II, SOFA, NIHSS, CHA2DS2-VASc, GRACE, TIMI, MELD, Wells DVT, etc.)\n\n'
                  '✅ Phân tích xét nghiệm (Khí máu động mạch, Nước tiểu, Dịch não tủy, Dịch màng phổi, Dịch ổ bụng)\n\n'
                  '✅ Chuyển đổi đơn vị y khoa (BMI, Diện tích cơ thể, Đơn vị SI, Đơn vị phòng lab)\n\n'
                  '✅ Hỗ trợ đa ngôn ngữ (Tiếng Việt/English) với localization hoàn chỉnh\n\n'
                  '✅ Interface thân thiện với nhân viên y tế, tích hợp tuyên bố y khoa và trích dẫn tài liệu'
                : '✅ 34+ Clinical Scoring Systems (Glasgow Coma Scale, APACHE II, SOFA, NIHSS, CHA2DS2-VASc, GRACE, TIMI, MELD, Wells DVT, etc.)\n\n'
                  '✅ Laboratory Analysis (Arterial Blood Gas, Urinalysis, Cerebrospinal Fluid, Pleural Fluid, Ascitic Fluid)\n\n'
                  '✅ Medical Unit Converter (BMI, Body Surface Area, SI Units, Lab Units)\n\n'
                  '✅ Multi-language Support (Vietnamese/English) with complete localization\n\n'
                  '✅ Healthcare professional-friendly interface with integrated medical disclaimers and literature citations',
              style: const TextStyle(fontSize: 14, height: 1.5),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildReferenceCategory(String title, List<String> references) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      child: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              title,
              style: const TextStyle(
                fontSize: 16,
                fontWeight: FontWeight.bold,
              ),
            ),
            const SizedBox(height: 12),
            ...references.map((ref) => Padding(
              padding: const EdgeInsets.only(bottom: 8),
              child: Row(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text('• ', style: TextStyle(fontWeight: FontWeight.bold)),
                  Expanded(
                    child: Text(
                      ref,
                      style: const TextStyle(fontSize: 13, height: 1.4),
                    ),
                  ),
                ],
              ),
            )),
          ],
        ),
      ),
    );
  }
}
