---
layout: page
title: VIP Advisors
permalink: /advisors/
description: "Meet the faculty, staff, and industry professionals who guide our VIP teams."
nav: true
nav_order: 4
---

<div class="advisors">

{% assign sorted_projects = site.projects | sort: "importance" %}

{% for project in sorted_projects %}

  {% if project.advisors %}
    
    {% for advisor in project.advisors %}
      <div class="advisor-card">


        {% if advisor.img %}
          <img src="{{ advisor.img | relative_url }}"
               alt="{{ advisor.name }}"
               class="advisor-img">
        {% endif %}

        <div class="advisor-info">
          <strong>{{ advisor.name }}</strong><br>
          <em>{{ advisor.title }}</em><br>
          {% if advisor.email %}
            <a href="mailto:{{ advisor.email }}">{{ advisor.email }}</a><br>
          {% endif %}
          <br>
          <em>Link to VIP Team page</em>: <a href="{{ project.url | relative_url }}">{{ project.title }}</a><br>
          <p>{{ advisor.bio }}</p>
        </div>
      </div>

    {% endfor %}

  {% endif %}

{% endfor %}

<hr>

<div class="advisor-card">
  <img src="{{ '/assets/img/bkeas.jpg' | relative_url }}"
       alt="Brian Keas"
       class="advisor-img">
  
  <div class="advisor-info">
    <strong>Brian Keas</strong><br>
    <em>Program Coordinator</em><br>
    <a href="mailto:bkeas@msu.edu">bkeas@msu.edu</a><br>
    <br>
    <p>Brian supports the VIP program at Michigan State University, helping connect students, faculty, staff, and external partners through collaborative, project-based learning experiences. He brings more than two decades of experience mentoring undergraduate researchers and supporting high-impact educational programs.<br>
    <br>
    Faculty intersted in running their own VIP should contact <a href="mailto:bkeas@msu.edu">Brian Keas</a> for more information.</p>
  </div>
</div>

</div>