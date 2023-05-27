import 'package:flutter/material.dart';
import 'package:plant_me/models/newspaper.dart';
import 'package:plant_me/pages/news_detail_page.dart';

class Newspaper extends ChangeNotifier{
  //list of news
  List<News> newsAricle = [
    News(
      newstopic: '21 Best Indoor Trees and Tropical Plants to Grow in Your Living Room',
      author: 'By Erika Owen and Amanda Sims', 
      imagePathTop: 'assets/img/Article1_1.png',
      imagePathDetail: 'assets/img/Article1_2.png', 
      detail: "Introducing the 21 Best Indoor Trees and Tropical Plants to Grow in Your Living Room. Transform your living space into a lush and vibrant oasis with these stunning and easy-to-care-for plants.\n Whether you're looking to add a touch of elegance, tropical vibes, or a modern statement, this curated selection has something for everyone. From the iconic Fiddle Leaf Fig and Areca Palm to the exotic Monstera and Bird of Paradise, these plants bring natural beauty and a breath of fresh air to any indoor setting. Discover the perfect green companions to enhance your living room and create a welcoming sanctuary that you'll love coming home to.\n"
              +"1. Fiddle Leaf Fig (Ficus lyrata): Known for its large, glossy leaves, the Fiddle Leaf Fig is a popular choice for adding a dramatic touch to any living room.\n"
              +"2. Areca Palm (Dypsis lutescens): The Areca Palm features feathery, arching fronds that bring a tropical vibe to indoor spaces.\n"
              +"3. Rubber Tree (Ficus elastica): With its shiny, leathery leaves, the Rubber Tree adds a bold and stylish statement to your living room.\n"
              +"4. Bird of Paradise (Strelitzia reginae): The Bird of Paradise plant showcases vibrant orange and blue flowers, reminiscent of a tropical paradise.\n"
              +"5. Monstera deliciosa: This iconic plant features large, fenestrated leaves that create a tropical and exotic ambiance in any living room.\n"
              +"6. Dragon Tree (Dracaena marginata): With its slender, upright stems and deep green leaves with reddish edges, the Dragon Tree adds a touch of elegance to indoor spaces.\n"
              +"7. Peace Lily (Spathiphyllum): Known for its striking white flowers and dark green foliage, the Peace Lily thrives in low-light conditions and helps improve indoor air quality.\n"
              +"8. Yucca (Yucca elephantipes): The Yucca plant is known for its spiky leaves and adds a unique architectural element to your living room.\n"
              +"9. Ponytail Palm (Beaucarnea recurvata): The Ponytail Palm features a distinctive bulbous trunk and long, cascading leaves, making it a visually interesting addition to any indoor space.\n"
              +"10. Swiss Cheese Plant (Monstera adansonii): With its smaller, intricately patterned leaves, the Swiss Cheese Plant brings a playful and tropical vibe to your living room.\n"
              +"11. Snake Plant (Sansevieria): The Snake Plant is a hardy and low-maintenance choice that adds a modern touch with its tall, upright leaves.\n"
              +"12. Norfolk Island Pine (Araucaria heterophylla): This tree-like plant with feathery branches resembles a miniature Christmas tree, adding a festive feel to your living room.\n"
              +"13. Parlor Palm (Chamaedorea elegans): The Parlor Palm is a compact palm species that thrives in lower light conditions, making it ideal for adding a touch of greenery to living rooms.\n"
              +"14. Umbrella Tree (Schefflera): With its glossy, palmate leaves, the Umbrella Tree creates a lush and tropical atmosphere in indoor spaces.\n"
              +"15. Pothos (Epipremnum aureum): The Pothos is a trailing vine with heart-shaped leaves that adds a cascading and lush green element to your living room.\n"
              +"16. Dracaena fragrans: This tree-like plant has long, lance-shaped leaves and adds a touch of elegance to any living room.\n"
              +"17. Chinese Money Plant (Pilea peperomioides): Known for its round, coin-like leaves, the Chinese Money Plant brings a unique and charming aspect to indoor spaces.\n"
              +"18. Aloe Vera (Aloe barbadensis): In addition to its attractive rosette of spiky leaves, Aloe Vera offers medicinal properties and is known for its soothing gel.\n"
              +"19. Majesty Palm (Ravenea rivularis): The Majesty Palm features graceful, feathery fronds that create a tropical and luxurious ambiance in your living room.\n"
              +"20. ZZ Plant (Zamioculcas zamiifolia): The ZZ Plant is a hardy and resilient choice with glossy, dark green leaves, making it perfect for low-light conditions.\n"
              +"21. String of Pearls (Senecio rowleyanus): This trailing succulent has unique spherical leaves that resemble a string of pearls, adding a touch\n"
    ),

    News(
      newstopic: 'Indoor Herb Gardening',
      author: 'By Yomidaze',
      imagePathTop: 'assets/img/Article2_1.png',
      imagePathDetail: 'assets/img/Article2_2.png', 
      detail: "Indoor herb gardening is a popular and rewarding way to bring the freshness and flavors of herbs into your home. Whether you have a spacious kitchen or limited space, cultivating herbs indoors can provide a convenient and sustainable source of aromatic and culinary delights. Here's a closer look at this enjoyable gardening practice:\n"
              +"Indoor herb gardening allows you to grow a variety of herbs right in the comfort of your home, providing you with a readily available supply of fresh ingredients for cooking, garnishing, and even herbal teas. Herbs like basil, rosemary, mint, thyme, and parsley are commonly grown indoors due to their adaptability and culinary versatility.\n"
              +"To start your indoor herb garden, choose a sunny spot near a window that receives at least six hours of direct sunlight per day. If sunlight is limited, you can supplement with grow lights to ensure your herbs receive adequate light for healthy growth. Select suitable containers with good drainage to avoid waterlogging and use a well-draining potting mix specifically formulated for herbs.\n"
              +"Regular watering is crucial to keep the soil moist but not overly saturated. Remember, indoor environments can be drier than outdoor conditions, so be mindful of maintaining proper humidity levels. You can achieve this by misting your herbs occasionally or placing a tray of water near the plants to provide humidity through evaporation.\n"
              +"Harvesting your herbs frequently not only promotes bushier growth but also allows you to enjoy their fresh flavors and aromas. Simply snip off the desired amount of leaves or stems, and the herbs will continue to grow. Additionally, pruning helps prevent herbs from becoming leggy and encourages compact and healthier plants.\n"
              +"Indoor herb gardens not only offer culinary advantages but also add beauty and fragrance to your living space. The lush green foliage of the herbs can serve as a natural décor element, bringing life and vibrancy to any room. Furthermore, the act of nurturing and tending to your indoor herb garden can be a rewarding and therapeutic experience.\n"
              +"Embrace the joy of indoor herb gardening and embark on a flavorful journey within your own home. Explore different herb varieties, experiment with unique recipes, and enjoy the convenience and satisfaction of having a bountiful supply of fresh herbs at your fingertips.\n"


    ),

    News(
      newstopic: 'The Importance of Weeding in the Garden',
      author: 'By Karameet',
      imagePathTop: 'assets/img/Article3_1.png',
      imagePathDetail: 'assets/img/Article3_2.png', 
      detail: "Weeding is an essential task in garden maintenance that often goes unnoticed or underestimated. However, it plays a crucial role in ensuring the health and vitality of your garden. Here's a closer look at the importance of weeding and how it contributes to a thriving garden:\n"
              +"1. Weed Control: Weeding is primarily aimed at controlling and removing unwanted plants, commonly known as weeds, from your garden. Weeds compete with desirable plants for essential resources such as water, sunlight, nutrients, and space. By removing weeds promptly and regularly, you prevent them from overtaking your plants and robbing them of the resources they need to thrive.\n"
              +"2. Nutrient Availability: Weeds can be voracious consumers of nutrients, depleting the soil of vital elements that are necessary for the healthy growth of your desired plants. By removing weeds, you ensure that the nutrients in the soil are available for your garden plants, enabling them to develop strong roots, lush foliage, and abundant blooms or fruits.\n"
              +"3. Pest and Disease Prevention: Weeds can act as hosts for pests and diseases, providing hiding places and breeding grounds. They can attract harmful insects or harbor pathogens that can spread to your cultivated plants. By eliminating weeds, you reduce the risk of pest infestations and the spread of diseases, promoting a healthier garden environment.\n"
              +"4. Aesthetics and Garden Design: Weeds can detract from the beauty and overall aesthetics of your garden. Their unruly appearance can create a messy and unkempt look, compromising the design and visual appeal you've worked hard to create. Regular weeding helps maintain a clean and well-maintained garden, allowing your desired plants to shine and enhancing the overall visual impact.\n"
              +"5. Weed Prevention: Weeding is not only about removing existing weeds but also about preventing future weed growth. Many weeds produce copious amounts of seeds that can lie dormant in the soil, ready to germinate when conditions are favorable. By regularly weeding and removing weeds before they set seed, you break the weed life cycle and reduce the number of weeds in subsequent seasons.\n"
              +"It's important to adopt proper weeding techniques to ensure effective weed control without causing harm to your desired plants. Hand-pulling, using gardening tools like hoes or weeders, and mulching to suppress weed growth are common methods employed by gardeners.\n"
              +"Remember, consistency is key when it comes to weeding. Regularly inspect your garden, pulling weeds as soon as they appear. Take the time to appreciate the therapeutic aspect of weeding as you connect with your garden and give your plants the best chance to flourish in a weed-free environment.\n"
              +"By recognizing the importance of weeding and making it a regular part of your garden maintenance routine, you'll create an environment where your desired plants can thrive, ensuring a healthy, vibrant, and beautiful garden for you to enjoy.\n"
              
    ),

    News(
      newstopic: 'Preparation for a Tree Contest',
      author: 'By Puffpie',
      imagePathTop: 'assets/img/Article4_1.png',
      imagePathDetail: 'assets/img/Article4_2.png', 
      detail: "Participating in a tree contest can be an exciting and rewarding experience for tree enthusiasts and arborists. It allows individuals to showcase their knowledge, skills, and the beauty of their carefully nurtured trees. To ensure a successful entry and maximize your chances of winning, proper preparation is key. Here are some essential steps to consider when preparing for a tree contest:\n"
              +"1. Research the Contest: Start by researching the specific tree contest you plan to enter. Understand the criteria, rules, and judging parameters set by the organizers. This will give you a clear idea of what judges will be looking for and help you tailor your preparation accordingly.\n"
              +"2. Select the Right Tree: Choose a tree that embodies the characteristics and requirements desired in the contest. Consider factors such as size, health, species, form, and any specific criteria outlined in the contest guidelines. Select a tree that is in its prime and visually appealing to increase your chances of standing out.\n" 
              +"3. Assess Tree Health and Maintenance: Ensure that your chosen tree is in excellent health and condition. Regularly inspect it for signs of disease, pest infestations, or any other issues. Address any problems by implementing appropriate treatments or seeking professional help if necessary. Perform routine maintenance tasks such as pruning, fertilizing, and watering to optimize tree health and appearance.\n" 
              +"4. Enhance Tree Aesthetics: Pay attention to the visual aspects of your tree to enhance its overall beauty and appeal. Consider techniques like crown shaping, thinning, and selective pruning to improve the tree's form and structure. Remove any dead or damaged branches and ensure a clean and well-maintained appearance.\n" 
              +"5. Clean the Surrounding Area: Prepare the area surrounding your tree for the contest. Clear away debris, weeds, and fallen leaves. Ensure that the tree's base is free from competing plants or clutter. A clean and well-maintained environment will highlight the tree's features and make it visually appealing to the judges.\n" 
              +"6. Document the Tree: Capture the essence and beauty of your tree through photography. Take high-quality photographs from different angles to showcase its unique characteristics, foliage, and overall presence. Make sure to photograph the tree in its best light and highlight any distinctive features that set it apart.\n" 
              +"7. Prepare Supporting Information: Prepare a brief description or documentation about the tree, including its species, age, history, notable features, and any interesting or relevant facts. Provide context and background information that helps the judges understand the tree's significance and value.\n" 
              +"8. Practice Presenting and Communication: Be prepared to present your tree to the judges effectively. Practice communicating your passion and knowledge about the tree, emphasizing its strengths, unique attributes, and the effort you've put into its care. Develop a concise and compelling presentation that highlights why your tree deserves recognition.\n" 
              +"9. Follow Contest Guidelines: Ensure that you comply with all the rules and submission requirements outlined by the contest organizers. Pay attention to deadlines, forms, and any specific instructions related to entry submission or presentation.\n"
              +"10. Attend to the Tree's Needs: Throughout the contest period, continue to provide the necessary care and attention to your tree. Monitor its health, make adjustments if needed, and maintain its pristine appearance until the contest concludes.\n"
              +"By following these preparation steps, you can position yourself for success in a tree contest. Remember, it's not just about the tree itself but also the effort and passion you invest in its care. Good luck as you showcase your tree and contribute to the celebration of nature's beauty!\n"
              +"\n"
    ),

    News(
      newstopic: 'Growing Temperate Crops at home',
      author: 'By TichaLa',
      imagePathTop: 'assets/img/Article5_1.png',
      imagePathDetail: 'assets/img/Article5_2.png', 
      detail: "Growing temperate crops can be a rewarding endeavor, allowing you to cultivate a variety of delicious and nutritious plants in regions with moderate climates. These crops thrive in temperatures that are neither excessively hot nor cold, making them well-suited for many temperate regions around the world. Whether you're a seasoned gardener or a beginner, here are some essential tips for successfully growing temperate crops:\n"
              +"1. Choose Suitable Crops: Start by selecting crops that are well-suited to your specific climate and growing conditions. Common temperate crops include tomatoes, peppers, beans, lettuce, carrots, broccoli, and cabbage. Research the optimal planting times, sunlight requirements, and soil preferences for each crop to ensure successful cultivation.\n"
              +"2. Prepare the Soil: Before planting, prepare the soil by removing weeds, rocks, and debris. Loosen the soil with a garden fork or tiller to improve drainage and promote healthy root growth. Amend the soil with organic matter, such as compost or well-rotted manure, to enrich its fertility and provide essential nutrients.\n"
              +"3. Timing and Planting: Pay attention to the recommended planting times for each crop, as some may require an early start indoors or direct seeding in the garden. Follow the instructions on seed packets or consult local gardening resources to determine the appropriate timing for planting. Consider using a planting calendar specific to your region for optimal results.\n"
              +"4. Provide Adequate Sunlight: Most temperate crops thrive in full sun, which typically means at least six to eight hours of direct sunlight per day. Choose a location in your garden that receives ample sunlight and is free from shade-casting structures or trees. If your garden has limited sunlight, opt for crops that can tolerate partial shade.\n"
              +"5. Watering and Irrigation: Consistent watering is crucial for the healthy growth of temperate crops. Monitor soil moisture levels and water the plants deeply when the top inch of soil feels dry. Avoid overwatering, as it can lead to root rot and other moisture-related issues. Consider using mulch around plants to help retain soil moisture and reduce weed growth.\n"
              +"6. Fertilization: Provide proper nutrition to your temperate crops by applying organic or balanced granular fertilizers as per the recommended rates. Supplemental feeding can help ensure healthy growth and abundant yields. Follow the instructions provided with the fertilizer and avoid over-application, which can damage plants.\n"
              +"7. Weed and Pest Control: Regularly inspect your crops for weeds and remove them promptly to prevent competition for resources. Implement organic weed control methods such as mulching or hand-weeding. Additionally, monitor your plants for common pests and take appropriate measures to control them, using natural remedies or organic insecticides when necessary.\n"
              +"8. Support and Pruning: Some temperate crops, like tomatoes or climbing beans, may require support structures such as trellises, stakes, or cages. Install these supports early in the growing season to ensure proper plant growth and prevent damage. Additionally, practice selective pruning to remove dead or diseased plant parts and encourage better airflow and sunlight penetration.\n"
              +"9. Harvesting: Regularly monitor your crops for maturity and harvest them at the appropriate stage. Different crops have different indicators of readiness, such as color change, firmness, or size. Harvesting at the right time ensures optimal flavor and quality. Remember to handle harvested produce with care to avoid bruising or damage.\n"
              +"10. Crop Rotation and Succession Planting: To maintain soil health and prevent disease buildup, practice crop rotation by changing the location of your crops each year. Additionally, utilize succession planting techniques by sowing new seeds or transplanting seedlings in stages to extend your harvest throughout the season.\n"
              +"By following these guidelines, you can enjoy a bountiful harvest of temperate crops in your garden. Remember to adapt\n"
    ),
  ];

  List<News> currentArticle = [];
  // get list of news for show
  List<News> getNewsList() {
    return newsAricle;
  }

  News getCurrentAticle(){
    return currentArticle[0];
  }

  void clickReadNews(News news){
    currentArticle.clear();
    currentArticle.add(news);
    notifyListeners();
  }

}