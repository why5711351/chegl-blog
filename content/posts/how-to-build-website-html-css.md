---
title: "How to Build a Website with HTML and CSS: Step-by-Step Guide (2026)"
description: "Learn to build your first website from scratch using HTML and CSS. Complete tutorial with code examples and best practices."
date: 2026-03-16T13:00:00+08:00
draft: false
tags: ["HTML", "CSS", "Web Development", "Beginner"]
categories: ["Web Development", "Tutorials"]
author: "TechTutorials Team"
---

# How to Build a Website with HTML and CSS: Step-by-Step Guide (2026)

Building a website from scratch is easier than you think. In this tutorial, you'll learn HTML and CSS fundamentals by creating a complete, responsive website.

## What You'll Build

A personal portfolio website with:
- Navigation bar
- Hero section
- About section
- Projects gallery
- Contact form
- Responsive design (works on mobile)

## Prerequisites

- A text editor (VS Code recommended)
- A web browser (Chrome, Firefox, or Edge)
- No prior coding experience needed!

## Project Setup

### 1. Create Project Folder

```bash
mkdir my-website
cd my-website
```

### 2. Create Files

Create these files:
- `index.html` (main page)
- `style.css` (styles)
- `script.js` (optional, for interactivity)

## HTML Fundamentals

### Basic HTML Structure

Open `index.html` and add:

```html
<!DOCTYPE html>
<html lang="en">
<head>
    <meta charset="UTF-8">
    <meta name="viewport" content="width=device-width, initial-scale=1.0">
    <title>My Portfolio</title>
    <link rel="stylesheet" href="style.css">
</head>
<body>
    <!-- Content goes here -->
</body>
</html>
```

### Understanding the Structure

- `<!DOCTYPE html>` - Tells browser this is HTML5
- `<html>` - Root element
- `<head>` - Metadata (not visible on page)
- `<body>` - Visible content
- `<meta>` - Page information (charset, viewport for mobile)
- `<link>` - Connects CSS file

## Building the Website

### 1. Navigation Bar

Add to `<body>`:

```html
<nav class="navbar">
    <div class="container">
        <a href="#" class="logo">MyPortfolio</a>
        <ul class="nav-links">
            <li><a href="#home">Home</a></li>
            <li><a href="#about">About</a></li>
            <li><a href="#projects">Projects</a></li>
            <li><a href="#contact">Contact</a></li>
        </ul>
    </div>
</nav>
```

### 2. Hero Section

```html
<section id="home" class="hero">
    <div class="container">
        <h1>Hi, I'm <span class="highlight">Your Name</span></h1>
        <p>A Web Developer & Designer</p>
        <a href="#projects" class="btn">View My Work</a>
    </div>
</section>
```

### 3. About Section

```html
<section id="about" class="about">
    <div class="container">
        <h2>About Me</h2>
        <p>I'm a passionate web developer with experience in HTML, CSS, JavaScript, and modern frameworks. I love creating beautiful, functional websites.</p>
        <div class="skills">
            <span class="skill-tag">HTML</span>
            <span class="skill-tag">CSS</span>
            <span class="skill-tag">JavaScript</span>
            <span class="skill-tag">React</span>
        </div>
    </div>
</section>
```

### 4. Projects Section

```html
<section id="projects" class="projects">
    <div class="container">
        <h2>My Projects</h2>
        <div class="project-grid">
            <div class="project-card">
                <h3>Project 1</h3>
                <p>Description of your awesome project.</p>
                <a href="#" class="btn-small">View Project</a>
            </div>
            <div class="project-card">
                <h3>Project 2</h3>
                <p>Another great project you built.</p>
                <a href="#" class="btn-small">View Project</a>
            </div>
            <div class="project-card">
                <h3>Project 3</h3>
                <p>Check out this cool creation.</p>
                <a href="#" class="btn-small">View Project</a>
            </div>
        </div>
    </div>
</section>
```

### 5. Contact Section

```html
<section id="contact" class="contact">
    <div class="container">
        <h2>Get In Touch</h2>
        <form class="contact-form">
            <input type="text" placeholder="Your Name" required>
            <input type="email" placeholder="Your Email" required>
            <textarea placeholder="Your Message" rows="5" required></textarea>
            <button type="submit" class="btn">Send Message</button>
        </form>
    </div>
</section>
```

### 6. Footer

```html
<footer class="footer">
    <div class="container">
        <p>&copy; 2026 MyPortfolio. All rights reserved.</p>
    </div>
</footer>
```

## CSS Styling

Now let's make it beautiful! Open `style.css`:

### 1. Reset and Base Styles

```css
* {
    margin: 0;
    padding: 0;
    box-sizing: border-box;
}

body {
    font-family: 'Segoe UI', Tahoma, Geneva, Verdana, sans-serif;
    line-height: 1.6;
    color: #333;
}

.container {
    max-width: 1100px;
    margin: 0 auto;
    padding: 0 20px;
}

a {
    text-decoration: none;
    color: inherit;
}

ul {
    list-style: none;
}
```

### 2. Navigation Bar

```css
.navbar {
    background: #2c3e50;
    color: white;
    padding: 1rem 0;
    position: fixed;
    width: 100%;
    top: 0;
    z-index: 1000;
}

.navbar .container {
    display: flex;
    justify-content: space-between;
    align-items: center;
}

.logo {
    font-size: 1.5rem;
    font-weight: bold;
}

.nav-links {
    display: flex;
    gap: 2rem;
}

.nav-links a:hover {
    color: #3498db;
}
```

### 3. Hero Section

```css
.hero {
    height: 100vh;
    background: linear-gradient(135deg, #667eea 0%, #764ba2 100%);
    color: white;
    display: flex;
    align-items: center;
    text-align: center;
}

.hero h1 {
    font-size: 3rem;
    margin-bottom: 1rem;
}

.highlight {
    color: #f39c12;
}

.hero p {
    font-size: 1.5rem;
    margin-bottom: 2rem;
}

.btn {
    display: inline-block;
    background: #f39c12;
    color: white;
    padding: 0.8rem 2rem;
    border-radius: 5px;
    transition: background 0.3s;
}

.btn:hover {
    background: #e67e22;
}
```

### 4. About Section

```css
.about {
    padding: 5rem 0;
    background: #f9f9f9;
}

.about h2, .projects h2, .contact h2 {
    text-align: center;
    margin-bottom: 2rem;
    font-size: 2.5rem;
}

.about p {
    text-align: center;
    max-width: 700px;
    margin: 0 auto 2rem;
}

.skills {
    display: flex;
    justify-content: center;
    gap: 1rem;
    flex-wrap: wrap;
}

.skill-tag {
    background: #3498db;
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 20px;
    font-size: 0.9rem;
}
```

### 5. Projects Section

```css
.projects {
    padding: 5rem 0;
}

.project-grid {
    display: grid;
    grid-template-columns: repeat(auto-fit, minmax(300px, 1fr));
    gap: 2rem;
}

.project-card {
    background: white;
    border: 1px solid #ddd;
    border-radius: 10px;
    padding: 2rem;
    transition: transform 0.3s, box-shadow 0.3s;
}

.project-card:hover {
    transform: translateY(-5px);
    box-shadow: 0 10px 20px rgba(0,0,0,0.1);
}

.project-card h3 {
    margin-bottom: 1rem;
    color: #2c3e50;
}

.project-card p {
    color: #666;
    margin-bottom: 1.5rem;
}

.btn-small {
    display: inline-block;
    background: #3498db;
    color: white;
    padding: 0.5rem 1rem;
    border-radius: 5px;
    font-size: 0.9rem;
}

.btn-small:hover {
    background: #2980b9;
}
```

### 6. Contact Section

```css
.contact {
    padding: 5rem 0;
    background: #f9f9f9;
}

.contact-form {
    max-width: 600px;
    margin: 0 auto;
    display: flex;
    flex-direction: column;
    gap: 1rem;
}

.contact-form input,
.contact-form textarea {
    padding: 1rem;
    border: 1px solid #ddd;
    border-radius: 5px;
    font-size: 1rem;
    font-family: inherit;
}

.contact-form textarea {
    resize: vertical;
}

.contact-form button {
    background: #2c3e50;
    color: white;
    padding: 1rem 2rem;
    border: none;
    border-radius: 5px;
    font-size: 1rem;
    cursor: pointer;
    transition: background 0.3s;
}

.contact-form button:hover {
    background: #34495e;
}
```

### 7. Footer

```css
.footer {
    background: #2c3e50;
    color: white;
    text-align: center;
    padding: 2rem 0;
}
```

### 8. Responsive Design (Mobile)

```css
@media (max-width: 768px) {
    .nav-links {
        display: none; /* Hide on mobile for simplicity */
    }
    
    .hero h1 {
        font-size: 2rem;
    }
    
    .hero p {
        font-size: 1.2rem;
    }
    
    .project-grid {
        grid-template-columns: 1fr;
    }
}
```

## Testing Your Website

### 1. Open in Browser

Double-click `index.html` or drag it into your browser.

### 2. Check Mobile View

- Right-click → Inspect
- Click the device/mobile icon
- Test different screen sizes

### 3. Test Links

Click all navigation links to ensure smooth scrolling works.

## Next Steps

### Improve Your Website

1. **Add images** - Use `<img>` tags for project screenshots
2. **Add JavaScript** - Make the navigation mobile-friendly
3. **Deploy it** - Use Netlify, Vercel, or GitHub Pages (free!)
4. **Add a custom domain** - Make it professional

### Learn More

- **CSS Flexbox** - Better layout control
- **CSS Grid** - Advanced layouts
- **JavaScript** - Add interactivity
- **Frameworks** - React, Vue, or Svelte

## Common HTML Tags Reference

```html
<!-- Headings -->
<h1>Largest</h1>
<h2>Section heading</h2>
<h3>Subsection</h3>

<!-- Text -->
<p>Paragraph</p>
<strong>Bold (important)</strong>
<em>Italic (emphasis)</em>

<!-- Links -->
<a href="https://example.com">Link text</a>

<!-- Images -->
<img src="image.jpg" alt="Description">

<!-- Lists -->
<ul>
    <li>Unordered item</li>
</ul>
<ol>
    <li>Ordered item</li>
</ol>

<!-- Divisions (containers) -->
<div class="container">Content</div>

<!-- Forms -->
<input type="text" placeholder="Enter text">
<input type="email" placeholder="Enter email">
<textarea rows="5"></textarea>
<button>Click me</button>
```

## Conclusion

Congratulations! You've built your first website with HTML and CSS. This is just the beginning—keep practicing and building projects to improve your skills.

---

**Related Tutorials:**
- [CSS Flexbox Complete Guide](/posts/css-flexbox-guide)
- [Deploy Website with Netlify](/posts/deploy-netlify)
- [JavaScript Basics for Beginners](/posts/javascript-basics)

**Questions?** [Contact us](/pages/contact)!
