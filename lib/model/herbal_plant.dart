class HerbalPlant {
  String name;
  String description;
  String safety;
  String evidence;
  String fact;
  String picture;
  bool isFavorite;

  HerbalPlant({
    required this.name,
    required this.description,
    required this.safety,
    required this.evidence,
    required this.fact,
    required this.picture,
    required this.isFavorite,
  });
}

var listPlant = [
  HerbalPlant(
    name: "Gingko",
    description:
        "As one of the oldest tree species, gingko is also one of the oldest homeopathic plants and a key herb in Chinese medicine. The leaves are used to create capsules, tablets, and extracts, and when dried, can be consumed as a tea.\n\nIt’s perhaps best-known for its ability to boost brain health. Studies say that gingko can treat patients with mild to moderate dementiaTrusted Source, and can slow cognition decline in dementia and Alzheimer’s disease.\n\nRecent research is looking into a component that can help dabetes, and there continue to be more studies, including an animal study that says it might influence bone healing.",
    safety: "3/5",
    evidence: "3.5/5",
    fact:
        "The gingko tree is considered a living fossil, with fossils dating from 270 million years ago. These trees can live up to 3,000 years.",
    picture: "images/ginko.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Turmeric",
    description:
        "With its brilliant orange hue, it’s impossible to miss a bottle of turmeric sitting on a spice shelf. Originating in India, turmeric is believed to have anticancer properties and can prevent DNA mutations.\n\nAs an anti-inflammatory, it can be taken as a supplement and it’s been used topically for people with arthritis who wish to relieve discomfort. It’s used worldwide as a cooking ingredient, which makes it a delicious, antioxidant-richTrusted Source addition to many dishes.\n\nAccording to recent research, turmeric is also showing promise as a treatment for a variety of dermatologic diseases and joint arthritisTrusted Source.",
    safety: "used as an herb: 5/5; used as a supplement: 4/5",
    evidence: "3/5",
    fact:
        "Turmeric has been used as a medicinal herb for 4,000 years. It’s a tentpole of an Indian alternative medicine practice called Ayurveda.",
    picture: "images/turmeric.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Evening primrose oil",
    description:
        "The vibrant yellow evening primrose flower produces an oil that’s thought to alleviate the symptoms of PMS and skin conditions like eczema.\n\nStudies that are available on this oil tend to be all over the map, but there are studies that are stronger than others. For example, some studies have found that evening primrose oil has anti-inflammatory properties. It’s been known to help with conditions such as atopic dermatitis and diabetic neuropathyTrusted Source. It can also help with other health concerns, such as breast pain.\n\nRecent research points to improving the quality of life for patients with multiple sclerosisTrusted Source, changing hormones and insulin sensitivity in those dealing with polycystic ovary syndrome, and using it topically to improve mild dermatitis.\n\nAccording to these studies, evening primrose oil might just be the Swiss Army knife of the medicinal plant world. The caveat is that it can interact with several medications. More research is coming, and the applications are promising.",
    safety: "topically: 4.5/5; orally: 3/5",
    evidence: "3/5",
    fact:
        "Evening primrose flowers are also called moonflowers because they bloom as the sun begins to set. People often say they smell like lemons.",
    picture: "images/evening primrose oil.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Flax seed",
    description:
        "Flax seed, also available as an oil, is one of the safer choices among plant-based dietary supplements. Harvested for thousands of years, today flax seed is praised for its antioxidant activity and anti-inflammatory benefits.\n\nAlthough more research needs to be done with human subjects, one study says that flax seed can help prevent colon cancer.\n\nAnother studyTrusted Source cites that flax seed has the ability to reduce blood pressure. When consumed, it can even aid in reducing obesity. Many people add flax seed and flaxseed meal to oatmeal and smoothies, and it’s also available in the form of tablets, oil (which can be put into capsules), and flour.\n\nThe best way to add flax seed is through your diet. Sprinkle ground seeds on cereal or salad, cook in hot cereal, stew, homemade breads, or smoothies. Add flaxseed oil to salad dressing.",
    safety: "4.5/5",
    evidence: "3.5/5",
    fact:
        "Flax seeds are one of a handful of plant-based sources for omega-3 fatty acids. Other sources include chia seeds, walnuts, and soybeans.",
    picture: "images/flax seed.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Tea tree oil",
    description:
        "The tea tree, which is native to Australia, produces an oil that’s long been thought to be beneficial for skin conditions, including mild acne, athlete’s foot, small wounds, dandruff, insect bites, and other inflammatory skin conditions.\n\nThere needs to be further study into acne and scalp use, but for now, there’s a degree of research into the antimicrobial superpowers of tea tree oil on wounds and topical infections.\n\nOne recent study said that tea tree oil slowed the growth of acne-causing microbes. It’s commonly used as a highly concentrated essential oil.\n\nWilson recommends that tea tree oil, as with all essential oils, should be diluted in a carrier oil. She adds that it often already comes diluted in a variety of skin care products and creams.",
    safety: "4/5",
    evidence: "3/5",
    fact:
        "Tea tree oil is derived from the leaves of a tree that’s native to Queensland and New South Wales, Australia.",
    picture: "images/tea tree oil.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Echinacea",
    description:
        "Echinacea is a lot more than those pretty, purple coneflowers you see dotting gardens. These blooms have been used for centuries as medicine in the form of teas, juice, and extracts. Today, they can be taken as powders or supplements.\n\nThe best-known use of echinacea is to shorten symptoms of the common coldTrusted Source, but more studies are needed to verify this benefit and to understand how echinacea boosts immunity when a virus is present.\n\nGenerally, save a few potential side effects, echinacea is relatively safe. Even though it needs more testing, you can always choose to use it if you’re hoping to see your cold symptoms end more quickly.",
    safety: "4.5/5",
    evidence: "3.5/5",
    fact:
        "Some of the earliest people to use echinacea as a medicinal herb were Native Americans. The first archaeological evidence dates back to the 18th century.",
    picture: "images/echinacea.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Grapeseed extract",
    description:
        "For years, grapeseed extract, which is available via liquid, tablets, or capsules, has been well-established and applauded for its antioxidant activity. It has potent health benefits, including lowering LDL (bad) cholesterol and reducing symptoms of poor circulation in the leg veins.\n\nStudiesTrusted Source are confirming that regular consumption of grapeseed extract has anticancer effects and seems to halt cancer cell growth.",
    safety: "4.5/5",
    evidence: "3.5/5",
    fact: "Grapeseed extract contains the same antioxidants found in wine.",
    picture: "images/grapeseed extract.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Lavender",
    description:
        "If you experience anxiety, chances are that someone along the way has recommended that you use lavender essential oil, and for good reason. This aromatic, purple flower has a fairly strong standing among studies, which have mainly focused on its anti-anxiety capacities.\n\nIt’s proven to be soothing in a study conducted among dental patients, while another study confirmed that lavender can directly impact mood and cognitive performance. It’s also been commended for its sedative properties to help people get much-needed sleep.\n\nRecently, it’s been discovered that lavender carries anti-inflammatory benefits as well. It’s most effective diluted and applied to the skin or used in aromatherapy, and it has few side effects.",
    safety: "4/5",
    evidence: "3.5/5",
    fact:
        "Lavender was first brought to Provence, France, by the Romans 2,000 years ago.",
    picture: "images/lavender.jpg",
    isFavorite: false,
  ),
  HerbalPlant(
    name: "Chamomile",
    description:
        "With flowers that resemble small daisies, chamomile is another medicinal plant that’s thought to have anti-anxiety properties. Most people know it because it’s a popular tea flavor (one reviewTrusted Source says that over 1 million cups per day are consumed around the world), but it can also be ingested through liquids, capsules, or tablets.\n\nThe calming powers of chamomile have been frequently studied, including a 2009 studyTrusted Source that states chamomile is superior to taking a placebo when treating generalized anxiety disorder. One recent study confirmed it’s safe for long-term use, and another recent study looked beyond its use for anxiety and confirmed that it also shows potential in anticancer treatments.",
    safety: "4/5",
    evidence: "3.5/5",
    fact:
        "There are two types of chamomile: German chamomile, an annual that thrives in the Midwest, and Roman chamomile, a perennial that attracts pollinators and smells like apples.",
    picture: "images/chamomile.jpg",
    isFavorite: false,
  ),
];
