# Dr Bèo v2.1.0 - App Store Submission Package

## 📋 **Submission Checklist**

### ✅ **Version Information**
- **App Version**: 2.1.0
- **Build Number**: 8
- **Release Date**: November 7, 2025
- **Submission Type**: App Store Compliance Update

### 🎯 **App Store Compliance Status**

#### **Guideline 1.4.1 (Physical Harm) - ✅ COMPLIANT**
- ✅ Educational disclaimers implemented
- ✅ "NOT A MEDICAL DEVICE" warnings prominent
- ✅ Educational positioning throughout app
- ✅ Prohibited uses clearly stated

#### **Guideline 1.4.2 (Medical Features) - ✅ COMPLIANT**
- ✅ All drug dosage calculations removed
- ✅ No medication dosing recommendations
- ✅ Educational reference tool positioning
- ✅ Academic study focus maintained

#### **Guideline 5.1.1 (Organization Account) - ⚠️ REQUIRED**
- ❌ **CRITICAL**: Requires Apple Developer Organization account
- 📝 **Action Needed**: Convert Individual → Organization or create new Organization account

### 📱 **App Store Metadata**

#### **App Name**
```
Dr Bèo - Medical Study Tool
```

#### **Subtitle (30 chars)**
```
Medical Education Reference
```

#### **Keywords (100 chars)**
```
medical education,study tool,healthcare learning,clinical reference,medical student,academic
```

#### **Promotional Text (170 chars)**
```
Educational reference tool for medical students and healthcare professionals. Interactive learning platform for academic study and training purposes only.
```

#### **App Description**
See `app_store_description_v2.md` for complete App Store description.

### 🔧 **Technical Requirements**

#### **iOS Build Information**
- **Minimum iOS Version**: 12.0
- **Xcode Version**: Latest
- **Flutter Version**: 3.35.4
- **Architecture**: arm64, x86_64

#### **App Store Connect Upload**
```bash
# Build command used:
flutter build ios --release --no-codesign

# Archive location:
build/ios/archive/Runner.xcarchive
```

### 📋 **Files Updated for Compliance**

#### **Core App Files**
- `pubspec.yaml` - Version 2.1.0+8, compliance description
- `lib/shared/widgets/medical_disclaimer_widget.dart` - Enhanced disclaimers
- `lib/features/home/presentation/pages/home_page.dart` - Overflow fixes, compact disclaimers

#### **Localization Files**
- `lib/l10n/app_en.arb` - Removed drug dosing keys, updated medical terms
- `lib/l10n/app_vi.arb` - Removed drug dosing keys, updated Vietnamese terms

#### **Clinical Score Pages (All Updated)**
- All clinical scoring pages updated with educational disclaimers
- Drug dosing features removed from applicable calculators
- Educational positioning maintained

### 🚫 **Removed Features (Compliance)**

#### **Drug Dosage Calculations**
- Creatinine Clearance drug dosing adjustments
- MDRD GFR medication recommendations
- Anaphylaxis specific medication doses
- Snake bite antivenom dosages
- CRUSADE bleeding risk dose adjustments
- HAS-BLED dose reduction recommendations

#### **Clinical Decision Features**
- All treatment decision recommendations
- Medication adjustment guidance
- Specific dosing protocols
- Clinical intervention suggestions

### 🎓 **Educational Positioning**

#### **App Purpose**
- Medical education reference tool
- Academic study companion
- Learning platform for healthcare students
- Educational resource for medical training

#### **Target Audience**
- Medical students
- Healthcare educators
- Academic institutions
- Healthcare professionals (educational use)

#### **Prohibited Uses**
- Patient diagnosis or treatment
- Clinical decision making
- Medical advice provision
- Emergency or urgent care
- Medication decisions
- Drug dosage calculations

### 📝 **Submission Notes**

#### **Review Notes for Apple**
```
This is an educational reference application for medical students and healthcare professionals. 
The app has been updated to achieve complete compliance with App Store Guidelines 1.4.1 and 1.4.2.

Key compliance measures:
- All drug dosage calculation features removed
- Enhanced educational disclaimers throughout
- Prominent "NOT A MEDICAL DEVICE" warnings
- Clear educational-only positioning
- Prohibited uses explicitly listed

The app serves as a study tool and academic reference only, with no clinical decision-making capabilities.
```

#### **Version Notes**
```
v2.1.0 Compliance Update:
- Complete App Store Guidelines compliance
- Removed all medication dosing features
- Enhanced educational disclaimers
- UI/UX improvements with overflow fixes
- Educational positioning throughout app
```

### 🔄 **Next Steps**

1. **Complete iOS Build** ✅ (in progress)
2. **Archive with Xcode** (after build completion)
3. **Upload to App Store Connect** (requires Organization account)
4. **Submit for Review** (with compliance documentation)
5. **Monitor Review Process** (expect 1-7 days)

### ⚠️ **Critical Requirements**

#### **Apple Developer Account**
- **MUST** be Organization account (not Individual)
- Individual accounts cannot submit medical apps
- Contact Apple Developer Support to convert account

#### **App Store Connect Setup**
- Ensure app metadata matches compliance positioning
- Upload screenshots showing educational disclaimers
- Include compliance documentation in review notes

### 📞 **Support Information**

#### **If Review Issues Occur**
- Reference this documentation
- Emphasize educational-only purpose
- Highlight compliance measures taken
- Provide specific guideline compliance details

---

**Prepared by**: AI Assistant  
**Date**: November 7, 2025  
**Version**: 2.1.0  
**Status**: Ready for Organization Account Submission
