# NutriNuts

### **Project Overview**
A Flutter-based nutrition prototype app that gamifies healthy snacking by allowing users to build custom trail mixes with real-time nutritional feedback. The app combines a sleek ingredient selector with a dynamic nutritional analyzer, helping health-conscious users make informed snacking decisions.

### **Problem Statement**
Health-conscious individuals struggle to portion control and understand the nutritional impact of mixed snacks like trail mixes. They want the flexibility to create custom combinations while maintaining visibility into calories, macros, and weight limits—something pre-packaged options don't offer.

### **Solution**
Developed an interactive "build-your-own" trail mix application with a visual ingredient selector, real-time weight tracking (20g/50g limit), and comprehensive macro-nutrient breakdown. The app educates users through "The Mix Theory" while enabling creative freedom.

### **Key Features**
1. **Ingredient Explorer** - Browse categorized ingredients (Nuts, Seeds, Dried Fruits) with per-serving calories and weight
2. **Interactive Builder** - Add/remove ingredients with visual feedback and real-time weight tracking
3. **Nutrition Dashboard** - Comprehensive macro breakdown (Protein, Carbs, Fibre, Sugar, Fat) with expandable details
4. **Premade Mixes** - Curated options like "Max Protein Mix" for quick selection
5. **Educational Content** - "The Mix Theory" blog-style guide to ingredient micronutrients

### **Technical Architecture**
- **Feature-First Architecture** - Organized by domains (Ingredients, Builder, Nutrition, Profile)
- **Reactive State Management** - Real-time UI updates when ingredients are added/removed
- **Cloud Sync** - Firebase for backing up user creations across devices

### **Data Models**
```dart
// Core Data Structures
Ingredient {
  String name, category;
  double calories, weight, protein, carbs, fibre, sugar, fat;
  bool allergenWarning;
}

TrailMix {
  List<Ingredient> ingredients;
  double totalWeight; // Max 50g
  Map<String, double> macroTotals;
  DateTime created;
}
```


### **Challenges & Solutions**
| Challenge | Solution |
|-----------|----------|
| **Real-time weight limits** (20/50g tracking) | Implemented reactive stream that recalculates totals on every add/remove |
| **Complex macro aggregation** | Created a central MixCalculator service that consolidates ingredient contributions |
| **Allergen warnings** (⚠️ Cashews) | Flag-based system with visual indicators for high-allergen ingredients |
| **Nutritional accuracy** | Integrated with verified nutrition database API with fallback local cache |
| **UI responsiveness** | Optimized rebuilds with selective widget updates |

 

### **Key Learnings**
- **Weight-based limiting** is more intuitive than item counting for portion control
- **Visual macros** (colored categories) improve quick comprehension over raw numbers
- **Real-time feedback** drives engagement—users enjoy seeing the mix "build" instantly
- **Educational content** ("The Mix Theory") adds perceived value beyond the core tool

### **User Experience Highlights**
- **Visual Progress:** Circular weight indicator (20g/50g)
- **Micro-interactions:** "+ Add" buttons with instant feedback
- **Nutrition at a Glance:** Color-coded macro categories
- **Warning System:**  alerts for allergen-dense ingredients
- **Dual View:** Builder screen + Summary dashboard
