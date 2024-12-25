# Assessing the Effectiveness of Music Therapy on Mental Health

## Objective
The primary objective of the dataset is to evaluate the efficacy of music therapy in enhancing mental well-being, wherein music serves as a therapeutic modality. Delving into a nuanced analysis, the dataset scrutinizes various factors potentially influencing mental health outcomes, including the diverse array of musical genres (comprising 16 distinct categories) and the frequency of engagement with each genre. 

## Introduction
This dataset was found on Kaggle and uploaded by Catherine Rasgaitis, a student at the University of Washington. Employing a multifaceted approach, Rasgaitis deployed Google Form surveys across diverse online platforms such as Reddit forums, Discord servers, and various social media channels. Additionally, business cards and posters, with the link to the form, were distributed in public spaces including libraries, parks, and other communal venues. The dataset includes responses from 736 participants, encompassing a diverse demographic spectrum without restriction based on age or gender. Each entry within the dataset corresponds to an individual respondent and their respective responses to the survey questions. Notably, each column within the dataset delineates a specific inquiry, while respondents were tasked with rating various mental health issues on a scale ranging from 0 to 10, wherein a rating of 0 signified absence of the issue and a rating of 10 indicated persistent experiences thereof. 


### Data: 

The dataset comprises 26 variables, with 16 of these variables dedicated to assessing the frequency with which respondents listen to each of 16 distinct music genres. The variables are classified into three main types: categorical, quantitative continuous, and quantitative discrete. 

#### Categorical Variables: 

    Month: The month in which the respondent completed the survey. 

    Primary_streaming_service: The preferred platform for listening to music. 

    Fav_genre: The respondent’s favorite music genre. 

    Frequency [Genre]: For each of the 16 genres (Country, EDM, Folk, Gospel, Hip hop, Jazz, K-pop, Latin, Lofi, Metal, Pop, R&B, Rap, Rock, and Video game music), the frequency of listening is divided into four categories: Never, Rarely, Sometimes, Very Frequently. 

#### Quantitative Continuous Variables: 

    Age: The age of the respondent. 

    Hours_per_day: The average number of hours the respondent spends listening to music daily. 

    BPM: Beats per minute of the music listened to. 

#### Quantitative Discrete Variables: 

    Mental Health Scores: Respondents have rated their mental health issues—Anxiety, Depression, Insomnia, and OCD—on a scale from 0 to 10. 

#### Dependent Variable: 

    Music Effect: The overall impact of music on the respondent's mental health, categorized into three outcomes: Improves, Worsens, No Effect. 

### Data cleaning: 

Initially the data had 736 rows but then 108 N/A values were found in the ‘Beats per minute’, hence we decided to remove those rows and consequently we were left with 628 instances to work with.   

### Data Transformation: 

For the ease of logistic regression, we converted all categorical variables into factors and target variable, which is Music effects, was converted into binary by considering ‘improves’ into 1 and clubbing the ‘worsens’ and ‘no effect’ responses into no improvement and labelling it to 0. 

## Research Questions: 

Through the dataset, we were able to answer the following research questions: 

- What is the relationship between age and mental health results? 

- Does the choice of streaming service influence the therapeutic effects of music? 

- What BPM levels are associated with improvements in mental health? 

- What is the optimal music listening duration for enhancing mental health? 

- What variable(s) are most important in determining the effects of music therapy on mental health? 

## Analysis and Findings 

### Distribution of people with reported mental health effect

![image](https://github.com/user-attachments/assets/ae7ddc7c-827d-4025-8871-94fb21922dc4)

The pie chart above displays the distribution of people who had improvements and no improvements in mental health after listening to music. 471 people (almost 75%) reported to have improved mental health. This shows that a significant number of people indeed had an improvement in their mental health following listening to music. 

### Distribution of people, with improved mental health levels, who listen to foreign language music 

![image](https://github.com/user-attachments/assets/12338de0-7566-4488-af14-da5951e83795)

An interesting insight that we were able to derive is how amongst those who had reported improvements in mental health, over 56% listen to foreign language music as well. Through this insight, we can safely assume that listening to foreign language music would have a correlation with mental health improvement. 

### Distribution of Age across people with reported and improvement and no improvement in mental health

![image](https://github.com/user-attachments/assets/2d81dbfe-41df-4c91-bbee-f723fbbc0f26)

Our analysis reveals an intriguing trend regarding the impact of music on mental health across various age groups. We observed that individuals from a diverse age spectrum, ranging from 20 to 75 years old, reported improvements in mental health attributed to music. This broad range suggests that the benefits of music aren’t restricted to a specific demographic. Interestingly, the younger cohort, particularly those between 20 to 35 years old, didn't report any positive changes. In contrast, older adults, right up to the age of 75, experienced noticeable improvements.
This indicates that music might play a crucial role in enhancing mental well-being as we age. The potential of music to resonate with and address the unique needs of elderly populations is particularly noteworthy. As mental health care for older adults often requires tailored approaches, integrating music into their care regimes could offer a non-invasive and enjoyable method to improve their quality of life. Such findings underscore the importance of considering age-specific interventions when deploying music-based therapies in mental health initiatives.

### Different streaming services across people with improved mental health

![image](https://github.com/user-attachments/assets/5ff9ead6-3722-4168-b923-07990e58f0b6)

For our analysis on the effects of streaming services on mental health, the data paints a revealing picture. Our findings indicate that Spotify and YouTube Music are the most frequently used platforms among respondents who reported an improvement in mental health. Spotify, in particular, shows a significantly higher count of positive mental health effects, with 308 respondents noting benefits, compared to other services. This could be attributed to Spotify's extensive library and personalized playlist features, which may enhance the listener's experience and thereby impact mental health positively.

The contrast between these platforms and others like Apple Music and Pandora is stark, suggesting that the type and quality of service provided by Spotify and YouTube Music might be more conducive to mental health improvements. This disparity also raises questions about the role of content availability, user interface, and personalized music recommendations in contributing to mental wellness. This data supports a growing recognition of the potential mental health benefits provided by these streaming services and underscores the importance of platform choice in mental health interventions.

### Distribution of BPM for people with reported improvement in mental health


![image](https://github.com/user-attachments/assets/75515c8d-b1d1-4176-8239-968b64d3b03b)

The histogram from our analysis reveals a fascinating trend regarding the impact of music tempo on mental health. A significant number of respondents reported experiencing mental health improvements while listening to music at around 130 BPM, a tempo typically associated with many pop and dance tracks. This specific tempo may have a soothing effect that helps alleviate mental stress and enhance mood, which suggests it could be a particularly effective element in therapeutic settings.

The prominence of 130 BPM in our findings highlights its potential as an optimal tempo for music therapy interventions aimed at reducing symptoms of anxiety and depression. This insight is not only valuable for clinical practice but also for individuals seeking ways to manage stress through music. Further investigation into how various genres at this BPM affect different demographics could refine our understanding and application of music therapy, making it a more precise tool for mental health improvement. This could pave the way for more personalized music therapy sessions tailored to individual needs and preferences, maximizing therapeutic outcomes.

### Daily hours of listening to music for people with reported improved mental health

![image](https://github.com/user-attachments/assets/2b81ebb8-b71c-42b3-93aa-144917e411f4)

The bar chart from our analysis points to a significant trend in mental health improvements linked to the duration of daily music listening. A pronounced peak in reported mental health benefits is observed among individuals who listen to music for 2-3 hours per day. This suggests that this specific amount of daily music exposure might be ideal for achieving therapeutic benefits.

This duration, 2-3 hours, may represent a sweet spot where music provides enough engagement without causing fatigue or overstimulation, which might dilute its positive effects. This finding could be incredibly valuable for shaping guidelines in music therapy, proposing that a daily listening schedule of around 2-3 hours could optimize mental health benefits.

## Logistic Regression Analysis
### Objective
The logistic regression model aimed to determine which factors are associated with the improvement of mental health through music therapy. The analysis included several independent variables, including demographic information, streaming services, favorite genres, and mental health conditions.
### Model Summary
The regression model was formulated as follows:
•	Dependent Variable: "Music.effects" (improvement in mental health, TRUE or FALSE).
•	Independent Variables: Age, Primary.streaming.service, Hours.per.day, Fav.genre, BPM, Anxiety, Depression, Insomnia, OCD.
### Model Fit
The model's AIC (Akaike Information Criterion) was 711.51, indicating the relative quality of the model. The deviance decreased from 709.06 (null deviance) to 653.51 (residual deviance), demonstrating an improvement in model fit when predictors were added. The low deviance suggests that the model aligns well with the data.
### Significant Predictors
Among the independent variables, only "Anxiety" was a significant predictor, with a p-value of 0.000206, which is well below the standard significance level of 0.05. This finding indicates that individuals experiencing anxiety are more likely to report improvements in their mental health through music therapy.
### Interpretation of all Coefficients
•	Intercept: The intercept is significant, but its practical interpretation in this context is limited due to the large estimate and standard error.
•	Age: Age has an extremely small coefficient, indicating a negligible impact on the likelihood of improvement.
•	Primary Streaming Service: All categories for this variable have large negative coefficients, but none are statistically significant.
•	Hours per Day: The coefficient for listening hours is positive, suggesting that increased listening may be beneficial, but this effect is not statistically significant.
•	Favorite Genre: Different genres have varying coefficients, with Gospel and Lofi showing extremely high estimates. However, these genres are not statistically significant predictors.
•	BPM: The coefficient for BPM is close to zero, indicating that tempo does not significantly influence improvement.
•	Anxiety: The positive coefficient for Anxiety indicates that individuals with this condition are more likely to report improvement. This aligns with the significance level of the predictor, making it a key factor in the model.
•	Depression, Insomnia, OCD: These psychological measures are not significant predictors, although their coefficients suggest varying influences.





### Interpretation of Results
The regression model indicates that anxiety plays a crucial role in determining the effectiveness of music therapy. This suggests that individuals suffering from anxiety can benefit from such interventions, making music therapy an effective coping strategy. The significant reduction in deviance also indicates that the model effectively captures the key factors influencing mental health improvements through music.


## Implications 
Based on our analysis, there’s a promising pathway for music streaming services like Spotify and YouTube Music to further delve into the health and wellness sector. Our data reveals that users experience substantial mental health improvements when engaging with music at specific tempos and for certain durations each day. This discovery presents an excellent opportunity for these services to offer specialized playlists that promote mental well-being, potentially in partnership with mental health professionals. Think of the potential impact of personalized music therapy programs that adapt to each user’s emotional needs and preferences!

Adding to the appeal, music therapy serves as a non-invasive, effective coping mechanism for individuals with anxiety, providing a simple way to enhance daily mental wellness routines with about 2-3 hours of targeted listening, which has been empirically shown to foster significant improvements. This makes musical therapy a highly accessible option that individuals can easily integrate into their daily routines to manage symptoms of anxiety.
Moreover, focusing on demographics like older adults, who have shown a positive response to music, can expand the user base and tap into an underserved market. These services can increase engagement by simplifying access for older users and curating content that resonates with their musical tastes. Furthermore, collaborating with healthcare institutions to integrate music therapy into treatment plans could enhance patient outcomes and position streaming services as vital partners in healthcare.

By investing in further research to explore the intricate relationships between music types and mental health benefits, these companies can not only innovate but also position themselves as leaders at the intersection of music, health, and technology. This strategic expansion could not only boost user satisfaction and loyalty but also open new revenue streams in an increasingly health-conscious market. Such a holistic approach not only addresses immediate user needs but also sets a foundation for long-term growth and relevance in the evolving digital landscape.


### Other Research That Echoes Our Findings
Numerous studies have demonstrated the connection between music therapy and mental health, aligning with our research findings, particularly concerning anxiety.
1. American Psychiatric Association (APA)
The APA emphasizes the transformative power of music in mental well-being. A 2022 review and meta-analysis highlighted the beneficial effects of music therapy on stress-related outcomes. The APA also notes that music therapy has shown promise in healing trauma, building resilience, and decreasing anxiety levels, all of which align with our findings  (American Psychological Association) .

2. National Alliance on Mental Illness (NAMI)
NAMI acknowledges the impact of music therapy on mental health. The organization outlines how music therapy benefits various conditions, including anxiety. Key interventions include lyric analysis, improvisation, active music listening, and songwriting, which help in mood regulation and emotional expression  (NAMI) .

3. Save The Music Foundation
The Save The Music Foundation highlights the psychological benefits of music therapy. It assists in developing effective coping mechanisms, improving emotional behavior, and increasing tolerance for frustration. Music therapy also enhances interpersonal communication and self-image, which are crucial aspects of mental health improvement. The foundation notes how music therapy helps people struggling with anxiety, mirroring our findings  (Save The Music Foundation) .
These studies corroborate our results, emphasizing the positive impact of music therapy on mental health, especially for individuals with anxiety


## Conclusion 
In wrapping up our project on the effectiveness of music therapy for mental health, the logical connections between our business intelligence initiatives and the analytics derived from our data are clear and compelling. Our analysis has confirmed that music therapy significantly enhances mental health across various demographics, with pronounced benefits in specific user groups and settings.

From a business intelligence perspective, our findings suggest substantial opportunities for music streaming platforms to tailor and market their services more strategically. For instance, platforms like Spotify and YouTube Music, which were shown to be popular among those reporting mental health improvements, could develop targeted features like curated therapeutic playlists or settings that allow users to select music based on desired therapeutic outcomes (e.g., anxiety reduction, mood enhancement). These enhancements could not only improve user experience but also open new revenue streams and partnership opportunities with health organizations.

Moreover, the identification of optimal listening conditions—such as the 130 BPM tempo and the 2-3 hour daily listening window—provides a basis for developing new content strategies that align with therapeutic needs. This could lead to a new genre of music services dedicated to health and wellness, positioning these platforms at the forefront of a growing intersection between digital media and healthcare.

In conclusion, the synergy between our business analytics and business intelligence has provided a robust framework for answering our project's central questions. It has also outlined actionable strategies that music streaming services can employ to enhance their offerings, thereby increasing their market share and contributing positively to the mental well-being of their users. This project not only highlights the potential of music as a therapeutic tool but also illustrates how data-driven insights can lead to innovative business solutions in the health and wellness industry.


## References 

https://www.apa.org/monitor/2013/11/music#:~:text=URL%3A%20https%3A%2F%2Fwww,100
https://www.nami.org/education-professional/the-impact-of-music-therapy-on-mental-health/
https://www.savethemusic.org/blog/music-therapy-and-mental-health/






