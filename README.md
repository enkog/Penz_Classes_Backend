# PENZ Classes Backend
> An online class app that allows users to see all available courses, reserve a spot in a class, see all reservations, add and delete courses. 
This repository consists of Api End points for Courses & Reservations and is linked to a front end built with React.
Link to React repo [PENZ Classes Frontend](https://github.com/ZeenatLawal/Penz_Classes_Frontend).

## Project Requirements

- You should follow the layout of [the provided design](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign). You should change only the titles, descriptions, and photos - in order to create a website about something other than motorcycles.

- Select a theme for your website - is it going to be a website for booking doctor appointments, booking online classes, or something else?

- The user logs in to the website, only by typing the username.

- In the navigation panel, the user can see links to:

	- Motorcycles/doctors/classes/items that you selected as a theme.

	- "Reserve" form.

	- "My reservations".

	- "Add motorcycle/doctor/class/item that you selected as a theme" (if you are in a group of 4 people the link is visible to everybody).

	- "Delete motorcycle/doctor/class/item that you selected as a theme" (if you are in a group of 4 people the link is visible to everybody).

- On the main page, the user can see a [list of motorcycles/doctors/classes/items that you selected as a theme](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign/modules/173005577).

- When the user selects a specific item, they can see the [details page](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign/modules/173005579) with its full description (skip the "Rotate image" button).

- In the details page, the user can click the "Reserve" button (in the design you can see the "Configure" button - please replace it with the "Reserve" button).

- When the user clicks the "Add item" link in the navigation panel they can see a form for adding a new item.

- Make the app responsive, creating both mobile and desktop versions.

- When the user clicks the "Delete item" link in the navigation panel they can see a list of all items with title and "Delete" button.

- When the user clicks the "Delete" button, the selected item is marked as removed and does not show on the main list anymore.

- To reserve an appointment, the user has to select a date and city (username and selected item are autofilled).

- Use the design based on the ["Book a vespa test-ride"](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign/modules/173005583) and add all necessary inputs.

- The user can also access the "Reserve" page from the navigation panel. In that case only username is autofilled.

- When the user clicks the "My reservations" link in the navigation panel they can see a list of their reservations (with information about item name, date and city).
## Built With

- Rails
- HTML & CSS

## Getting Started

### To get a local copy run the following steps:

- Clone the repository on your terminal with `git clone https://github.com/enkog/Penz_Classes_Backend.git`
- Open the folder with your code editor

### Prerequisites

- Ruby: 2.7.2
- Rails: 6.1.3
- Postgres: >=9.5

### Setup

Install gems with:

```
bundle install
```

Setup database with:

```
rails db:create
rails db:migrate
```

Get seeded data with:

```
rails db:seed
```

If you are on Linux start the database service with:

```
sudo service postgresql start
```

### Usage

Start server with:

```
rails server
```

Open `http://localhost:3000/` in your browser.

### Deployment

> TBA
[Visit the Website]()


### To view the API documentation

- Go to [API DOCS](http://localhost:3000/api-docs/) to view API endpoints and test them

## Authors

👤 **Zeenat Lawal**

- GitHub: [@ZeenatLawal](https://github.com/ZeenatLawal)
- Twitter: [@lawal_zeenat](https://twitter.com/lawal_zeenat)
- LinkedIn: [Zeenat Lawal](https://www.linkedin.com/in/zeenatlawal/)

👤 **Oguadinma Nkiruka Ngozika**

- Github: [@enkog](https://github.com/enkog)
- Linkedin: [@enkog](https://www.linkedin.com/in/enkog/)
- Twitter: [@enkodes](https://twitter.com/enkodes)

👤 **Elyor Doniyorov**

- Github: [@elyor-doniyorov](https://github.com/elyor-doniyorov)
- LinkedIn: [@elyor-doniyorov](www.linkedin.com/in/elyor-doniyorov)
- Twitter: [@elyor-doniyorov](https://twitter.com/elyor-doniyorov)

👤 **Olajumoke Priscilla Oni**

- Github [@prolajumokeoni](https://github.com/prolajumokeoni)
- Twitter [@prolajumokeoni](https://twitter.com/prolajumokeoni)
- LinkedIn [@olajumoke-priscilla-oni-44a48b162](https://www.linkedin.com/in/prolajumokeoni/)

## 🤝 Contributing

Contributions, issues, and feature requests are welcome!

Feel free to check the [issues page](https://github.com/enkog/Penz_Classes_Backend/issues).

## Show your support

Give a ⭐️ if you like this project!

## Acknowledgments

- Microverse
- [Murat Korkmaz](https://www.behance.net/muratk) for the Project Design from [Behance](https://www.behance.net/gallery/26425031/Vespa-Responsive-Redesign)
- Learning partners, Standup and morning session team
