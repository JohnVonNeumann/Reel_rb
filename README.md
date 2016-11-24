# README

Welcome to my ReadMe. My name is Louis and I am a student at CoderFactoryAcademy Melbourne.

This is my term 2 assignment, in this assignment we were to build a two sided marketplace app with a selection of criteria including:

Demonstrate Ruby on Rails development skills.
Create your application using Ruby on Rails.
Demonstrate knowledge of Rails conventions.
Use postgresql database in development.
Use an API (eg. Omniauth, Geocoding, Maps, other..).
Use appropriate gems.
Use environmental variables to protect API keys etc.
Implement a payment system for your product.
Your app must send transactional emails (eg. using Mailgun).
Your app should have an internal user messaging system.
Your app will have some type of searching, sorting and or filtering capability.
Your app will have some type of file uploading capability (eg. images).
Your app will have authentication (eg. Devise, must have full functionality in place).
Your app will have authorisation (users have restrictions on what they can see and edit).
Your app will have an admin dashboard for the admin user to administrate the site.
Document your application with a README that explains how to setup, configure and use your application.

My app, Reel, is an app to match fisherman to fishing guides of all levels of skill and professionalism, it is for small scale local fishermen and hobbyists, to commerical fishermen and professional sportsmen. The idea was to be able to facilitate better usage of skill throughout the fishing community.

I'll provide a small, brief overview of the mountain of text that comes below this:
I attempted to roll a large part of this system myself and learnt a lot along the way, but ultimately failed in the overall goal of completing the assignment. I'm proud of my attempt but sad that I didn't manage to finish. The project has allowed me a glimpse into the intricate process of developing web applications and the amount of work that goes into it all. I plan over the next week to finish the application using gems, this will probably occur in a different file, as I'm not sure how I would go about melding new to old. Otherwise, I would probably have already done it. 

Things I've learnt whilst going through this project:

<b> Wednesday 16th November 2016 </b>
Today I completed chapter 6 of Hartl's book and added this through (slightly adjusting along the way for personal project reasons) and after struggling with the entire concept of the MVC and layout of apps, it's all starting to come together. Changes to the model and controller create no aesthetic changes that are viewable outside of the source code (obviously lol), what strikes me about this is the way a back end could effectively be completely built, refactored and engineered, yet the face of the site would not show any improvement at all (at least in the case of the model, controller would add more pages). Throughout the chapter I was struck by how useful even very basic implementations of gems (bcrypt in this example) could be, with the use of has_secure_password inside my user.rb model (below my other validation criteria) I was able to call up a massive variety of methods and other useful bits and pieces.

* Sunday 20th November 2016
Should have made entries on previous days but you know, shoot me. Project is going well, encountered a small hiccough yesterday when I found a small bug but perhaps got a bit impulsive in my hunt for it and made some stupid changes in places that I should not have touched, slightly demotivating to be fair, not know if the commit you're now on is written correctly, I understand there are probably easy ways of fixing this but I'm still at the start of my Git experience so I'll learn them as I go. I basically rolled back a big set of commits (to the start of the branch) in order to find what turned out to be a small typo. Annoying. I recently recieved Agile Web Development with Rails 5 in the mail and have been blown away at how well written both this book and (from a place of little to no experience actually with code) the code of Rails 5 itself, things are used to seem cryptic as fuck have now been illuminated. I am surpised by how intuitive a lot of the code writes, even for some pretty deep topics. Will write more today as I plan to have a good go of it.


Well, I’ve encountered more issues, and it’s apparent that my git use is not upto par, I’m now being limited by my messages and the relevancy of what they indicate. I have run into an issue where I need to revert back to an old point yet I can’t work out WHICH point it is that I must revert too. In saying all this, I don’t necessarily believe that my commit messages are bad by any stretch of the imagination, I just think that they definitely need to have a better structure to them in order to return more knowledge/context to those reading them.

Look like I fixed the error and the site is now progressing properly, the problem is that I still have no idea what the fuck was broken, which is really annoying, however seeing as I deleted the branch, went back in code in order to get to a safe point then remade the branch, and rewrote the code by hand instead of copy-pasta like a lazy fuck, it now works. I’ll assume it is an error in type originally, lesson learnt, write your own code.

Well, it’s the end of the day and I have yet to make the final merge, it’s been a long day working on this stuff and I fully expect that it is going to take some push to get this assignment completed by due date. Either way, I’ll be presenting something I proud of. Back to it tomorrow. Where I’ll be finding the cause of some of these errors I’m having involved with my tests, they were’nt happening prior to my db:seed, I think… We will suss it out tomorrow.

Well then, yesterday I made a commit that I quote:
 “Commit 9, potential game breaker, had to add in a shittonne of functions in order to get friendly forwarding set up, should probably have skipped the feature but I felt that getting in it would be easier, if there is an error anywhere, it's probably with this one”
After 4 more hours of fucking about, turns out that even as I was committing, I knew that errors were swiftly converging on my position. Total fuck around. The reason I made the comment in this first place was in order to get some functionality working for friendly forwarding shit, I would have to piecemeal a load of bits and pieces in from other places (specifically, chapter 9, a chapter I skipped to save time), I knew at the time that this was a shit idea, but proceeded, if anything, I’m happy my spidersense’s are working, next time I’ll just go with the gut feeling.

After two days of plodding, I finally finished the updating users section and can move onto other things, I’m going to leave the last chapters now and move onto coding more of my own solution, I have the backbone, time to add in muscle and skin. My idea is to move onto a listings/products model/controller now, as to enable people to post and view their relevant listings of products and the like, alongisde this I’ll build a simple cart style system, I don’t believe that the actual system would use such an archaic system as a “shopping cart”, it seems a bit too dated and e-commerce, but for all intents and purposes, simple is how we are doing this one. I’ll be working through some examples in my rails book that I recently book, Agile Web Dev with Rails 5.

Listing Important Bits and Pieces:
title:string
description:text
image_url:string
price:decimal
location:string

Got my Admin Viewpage up and running using ActiveAdmin gem, took a bit of fucking about but got there eventually, had my first experience with initializer files and the like, looks good, a little too good.

Gems. I feel that I’m becoming more and more annoyed by this implementation of gem bullshit, I’m not actually coding, I’m just working out why a gem isn’t working, finding a place that the puzzle piece fits then forcefully cramming it into a gap with a sledgehammer. I appreciate that gems are useful and that they allow us to utilise code that is far better than our own, what I don’t enjoy however is having a hand forced on matters, for example, I can’t find a messaging gem that does not rely on devise. I read a blog post:  http://www.mikeperham.com/2016/02/09/kill-your-dependencies/ that talked about gems that use gems that use gems and it confirmed a thought that I’d been ruminating on, and that was in relation to the introduction of other peoples errors when you use a gem, especially gems that clamber on top of one another. Perhaps I’m writing from a point of no perspective, but atm I feel that as a student, gem use is damaging and even a harmful habit to get into. Once you know what you’re doing, sweet, go for your life, but atm installing gems that install gems feels stupid.

I’ve decided to leave the messaging app until the very end seeing as it isn’t a core piece of functionality in terms of it is required for the site to work, it is a criteria point but not integral, moving into cart creation/payment processing and the confirmation emails.

It is the day before my show and tell and I am sad to say I have not fully built out the product in time, attempting to roll my own system was a risky play from the start and I knew that it would be extremely difficult. However, I'd say that it has served its intended purpose of educating me more on rails and the intricacies of the whole cycle. My experience has been enjoyable and I've realised what a monolithic task it would be to write everything yourself. In a way it has kinda strengthened my perspective however, it seems that some areas of development have been ushered into a cartel style market, where you are restricted from entire swathes of gems and imported functionality should you not tow the line and use specific elements of code, ie: devise, this is in reality, probably a good thing however, as it would most likely provide a really solid base of security for the industry. I actually talked with a senior dev about this and he said that it was good to know how to roll your own auth system but in deployment it was a risky move.

My plan for this codebase is probably to leave the majority of it behind and over the next week, rewrite it all using gems and imported functionality in order to create a working product that is worthy of attention, I'll keep the repo as good experience and an example. s
