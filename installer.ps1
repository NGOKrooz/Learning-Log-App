<!DOCTYPE html>
<html lang="en">

  
  <head>

  
<script>
    window.dataLayer = window.dataLayer || [];
    </script>
    
    <script>(function(w,d,s,l,i){w[l]=w[l]||[];w[l].push({'gtm.start':
        new Date().getTime(),event:'gtm.js'});var f=d.getElementsByTagName(s)[0],
        j=d.createElement(s),dl=l!='dataLayer'?'&l='+l:'';j.async=true;j.src=
        'https://www.googletagmanager.com/gtm.js?id='+i+dl;f.parentNode.insertBefore(j,f);
        })(window,document,'script','dataLayer','GTM-KJ4F382K');</script>
        



  
  
  
  
    
  
  
  
  <title>Command line interface (CLI) | Upsun Docs</title>
  <meta charset="utf-8">
  <meta name="viewport" content="width=device-width, initial-scale=1, shrink-to-fit=no">
  
    <link rel="shortcut icon" href="/images/favicon.ico">
  
  <meta name='zd-site-verification' content='vfhn57gsamhodmcebl0hpr' />
  


<meta name="google-site-verification" content="AA3wwwZ69DTZVM0_qzBVXOWa5i4Dim8HNql-jGdOKvA" />



  <meta name="description" content="See how to use and manage your Upsun projects directly from your terminal. Anything you can do within the Console can be done with the CLI.">




  <meta itemprop="image" content="https://docs.upsun.com/images/default_social.png">





  <meta name="keywords" content="PaaS,cloud hosting,DevOps,PHP,Node.js,Go,Golang,Python,.NET,Ruby,Java,Drupal,Wordpress,Symfony,Maven,Hibernate,Jakarta,Spring,TYPO3,">


  

  <meta name="twitter:description" content="See how to use and manage your Upsun projects directly from your terminal. Anything you can do within the Console can be done with the CLI.">



    <meta name="twitter:title" content="Command line interface (CLI)">




  

    
      <meta name="twitter:card" content="summary_large_image">
    

    
      <meta name="twitter:site" content="@upsuncom">
    

    
      <meta name="twitter:creator" content="@upsuncom">
    

    
      <meta name="twitter:image" content="https://docs.upsun.com/images/default_social.png">
    

  



  


  <meta name="og:description" content="See how to use and manage your Upsun projects directly from your terminal. Anything you can do within the Console can be done with the CLI.">




  <meta property="og:type" content="article">

  
    <meta property="og:url" content="https://docs.upsun.com">
  

  
  
    <meta property="og:image" content="https://docs.upsun.com/images/default_social.png">
  



  
  
    <meta property="og:site_name" content="Upsun User Documentation">
  



  


  
  <link rel="stylesheet" href="/css/vendor.635eb3828bc4b6538ce2e3bcf89b3e366d4b8e5bb73ff0b1ce00270cdfe45711.css?version=1.0.19">






<link rel="stylesheet" href="/css/syntax-highlighting.121d2f2e0bc60579758114a5f54850906828eb5244dd5bd95848ac520fe16451.css?version=1.0.19">



<link rel="stylesheet" href="/css/main.8f11bba71c4170d2817fd760683627ce76a6c0c7376c9d0e2652bf14fa14c837.css?version=1.0.19">




  
<script defer src="/alpinejs/cdn.min.js?version=1.0.19"></script>


  



 


    
  <meta name="llms.txt" content="https://docs.upsun.com/llms.txt">
  <meta name="llms-full.txt" content="https://docs.upsun.com/llms-full.txt">


  
    <script id="MathJax-script" async src="https://cdn.jsdelivr.net/npm/mathjax@3/es5/tex-chtml.js"></script>
<script>
  MathJax = {
    tex: {
      displayMath: [['\\[', '\\]'], ['$$', '$$']],  
      inlineMath: [['\\(', '\\)']]                  
    }
  };
</script>

  

</head>

  
  <body class="bg-white" onload="dataLayer.push({'event': 'datalayer_ready', 'page_category1': 'administration', 'page_category2': 'Command line interface (CLI)', 'link_url': 'https:\/\/docs.upsun.com\/\/administration\/cli.html'});">

    
    
<style>
   
  body:not(.banner-dismissed) {
    padding-top: 48px;  
  }
  body:not(.banner-dismissed) header {
    top: 48px;  
  }
   
  .banner-dismissed #platformsh-upsun-announcement {
    display: none !important;
  }
</style>


<div id="platformsh-upsun-announcement" class="announcement-banner fixed top-0 left-0 right-0 z-50 w-full text-black text-center py-3 px-4" style="background-color: #FAD2FB; display: block;">
  <div class="flex items-center justify-center gap-2 max-w-6xl mx-auto">
    
    <button 
      aria-controls="platformsh-upsun-announcement" 
      aria-label="Close announcement" 
      class="absolute right-4 top-1/2 transform -translate-y-1/2 p-1 hover:bg-black hover:bg-opacity-10 rounded"
      onclick="dismissBanner();">
      <svg xmlns="http://www.w3.org/2000/svg" width="20" height="20" fill="none" viewBox="0 0 24 24">
        <path fill="currentColor" fill-rule="evenodd" d="M17.705 6.295a1.01 1.01 0 0 0-1.426 0L12 10.574 7.722 6.295a1.008 1.008 0 1 0-1.427 1.427L10.574 12l-4.279 4.279a1.008 1.008 0 1 0 1.427 1.426L12 13.426l4.279 4.279a1.008 1.008 0 1 0 1.426-1.426L13.426 12l4.279-4.278a1.01 1.01 0 0 0 0-1.427" clip-rule="evenodd"/>
      </svg>
    </button>
    
    
    <div class="text-sm md:text-base font-medium">
      Platform.sh is now Upsun. 
      <a href="https://upsun.com/platform-sh-is-now-upsun/" 
         target="_blank" 
         rel="noopener noreferrer" 
         class="underline hover:no-underline font-semibold">
        Click here to learn more
      </a>
    </div>
  </div>
</div>


<script>
  function dismissBanner() {
    
    document.documentElement.classList.add('banner-dismissed');
    document.body.classList.add('banner-dismissed');
    
    
    
    
    localStorage.setItem('platformsh-upsun-announcement-dismissed', 'true');
  }

  
  if (localStorage.getItem('platformsh-upsun-announcement-dismissed') === 'true') {
    document.documentElement.classList.add('banner-dismissed');
    document.body.classList.add('banner-dismissed');
  }

  document.addEventListener('DOMContentLoaded', function() {
    
    
  });
  
  
  function resetAnnouncementBanner() {
    localStorage.removeItem('platformsh-upsun-announcement-dismissed');
    location.reload();
  }
</script>


    
    

<noscript><iframe src="https://www.googletagmanager.com/ns.html?id=GTM-KJ4F382K"
    height="0" width="0" style="display:none;visibility:hidden"></iframe></noscript>
    


<header class="print:hidden bg-primary-darker flex p-4 text-white fixed top-0 w-full z-50" data-engagement-id="header-section">

  
  



  
  
  
    
  

  <a class="basis-1/4 md:basis-1/6 flex justify-center" href="/" data-engagement-id="logo-link">

    <img class="min-w-32 max-w-[175px]" src="/images/logo.svg" alt="Upsun User Documentation">

  </a>




  


<div id="xssroot" class="basis-3/4 md:basis-7/12 pl-8 pr-4" data-engagement-id="search-container"></div>



  
  


<div class="hidden md:flex basis-3/12 items-center justify-end" data-engagement-id="header-cta">

  
  
    
      <a class="font-semibold secondary-action text-sm xl:text-base px-4 py-2 mx-2 rounded hidden lg:inline xl:px-8 hover:bg-skye-light focus:bg-skye-light hover:text-slate focus:text-slate"
      onclick="dataLayer.push({'event': 'click_login', 'click_name': 'Login', 'link_url': 'https:\/\/docs.upsun.com\/\/administration\/cli.html'});"
      data-engagement-id="login-link"
      href="https://console.upsun.com/" rel="noopener">Log in</a>
    
    
      <a class="font-semibold primary-action text-sm xl:text-base px-4 py-2 bg-skye rounded text-white hover:bg-skye-dark focus:bg-skye-dark"
      data-engagement-id="trial-link"
      onclick="dataLayer.push({'event': 'click_free_trial', 'click_name': 'Free trial', 'link_url': 'https:\/\/docs.upsun.com\/\/administration\/cli.html'});"
      href="https://upsun.com/register/" rel="noopener">Sign up</a>
    
  
</div>


</header>



    
    <div class="grid md:grid-cols-10 divide-x-4 mt-24 print:mt-4 print:block print:mx-2"
    >

      
      

<nav class="print:hidden md:col-span-2 pt-2 pl-2 md:pb-28 max-h-fullv overflow-y-scroll top-24 md:sticky h-[calc(100vh - 6rem)]"
  data-engagement-id="sidebar"
  x-data="{ showSidebar: false }"
>

  
  <button class="md:hidden hover:bg-skye-light my-4" @click="showSidebar = ! showSidebar" aria-controls="sidebar-nav" aria-expanded="false" aria-label="Toggle navigation">
    <svg width="30" height="24" viewBox="0 0 30 24" fill="none" xmlns="http://www.w3.org/2000/svg">
      <path d="M0 0h30v2H0z" class="fill-slate"></path>
      <path d="M0 10h30v2H0z" class="fill-slate"></path>
      <path d="M0 20h30v2H0z" class="fill-slate"></path>
    </svg>
  </button>

  
  <h2 class="sr-only">Site navigation</h2>
  <div class="md:block" :class="showSidebar ? '' : 'hidden'" id="sidebar-nav">

    
    



    
      
    

    

    
      
    







  
  
  
    
      
    
  
  
  
  <div x-data="{ expanded: false }" data-engagement-id="sidebar-get-started">
    <h3 class="font-semibold">
      <button class="bg-no-repeat bg-right-2 w-[95%] py-4 pl-2 pr-6 my-2 text-left bg-grey" :style="expanded ? 'background-image: url(/images/icons/minus.svg);' : 'background-image: url(/images/icons/add.svg);'" @click="expanded = ! expanded" aria-controls="section-get-started" aria-expanded="false">
        Get started
      </button>
    </h3>
    <div x-show="expanded" id="section-get-started">
      





  
  



  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  

  
  

  
  
    
      
      
        









  
  



  
  










  

<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Introduction">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/get-started/here.html" destination="/get-started/here.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Introduction
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-getting-started-with-vendor/name-sidebar-id" aria-controls="section-getting-started-with-vendor/name-sidebar-id" aria-expanded="false" aria-label="Introduction">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-getting-started-with-vendor/name-sidebar-id" id="section-getting-started-with-vendor/name-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Setup">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/here/setup.html" destination="/get-started/here/setup.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Setup
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Create a project">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/here/create-project.html" destination="/get-started/here/create-project.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Create a project
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Configure your project">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/here/configure.html" destination="/get-started/here/configure.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Configure your project
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-configure-your-project-sidebar-id" aria-controls="configure-your-project-sidebar-id" aria-expanded="false" aria-label="Configure your project">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-configure-your-project-sidebar-id" id="configure-your-project-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/here/configure/nodejs.html" class="hover:text-skye-dark focus:text-skye-dark">
                        JavaScript/Node.js
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/here/configure/php.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PHP
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/here/configure/python.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Python
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Set resources">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/here/set-resources.html" destination="/get-started/here/set-resources.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Set resources
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Revisions">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/here/make-changes.html" destination="/get-started/here/make-changes.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Revisions
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Local development">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/here/local.html" destination="/get-started/here/local.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Local development
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-local-development-sidebar-id" aria-controls="local-development-sidebar-id" aria-expanded="false" aria-label="Local development">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-local-development-sidebar-id" id="local-development-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/here/local/tethered.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Tethered
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Third party integrations">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/here/third-party.html" destination="/get-started/here/third-party.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Third party integrations
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Get support">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/here/support.html" destination="/get-started/here/support.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Get support
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


      
        









  
  



  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-How to deploy">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/get-started/stacks.html" destination="/get-started/stacks.html"  class="hover:text-skye-dark focus:text-skye-dark">
        How to deploy
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-how-to-deploy-sidebar-id" aria-controls="section-how-to-deploy-sidebar-id" aria-expanded="false" aria-label="How to deploy">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-how-to-deploy-sidebar-id" id="section-how-to-deploy-sidebar-id">


  
  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
        <h5 class="text-xs pt-2 pb-2 uppercase">Javascript/Node.js</h5>
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Express">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/stacks/express.html" destination="/get-started/stacks/express.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Express
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-express-sidebar-id" aria-controls="express-sidebar-id" aria-expanded="false" aria-label="Express">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-express-sidebar-id" id="express-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/express/add-database.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Add a database to Express
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Next.js">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/nextjs.html" destination="/get-started/stacks/nextjs.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Next.js
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Strapi">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/stacks/strapi.html" destination="/get-started/stacks/strapi.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Strapi
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-strapi-sidebar-id" aria-controls="strapi-sidebar-id" aria-expanded="false" aria-label="Strapi">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-strapi-sidebar-id" id="strapi-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/strapi/add-database.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Add a database to Strapi
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
        <h5 class="text-xs pt-2 pb-2 uppercase">Python</h5>
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Django">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/django.html" destination="/get-started/stacks/django.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Django
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Flask">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/flask.html" destination="/get-started/stacks/flask.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Flask
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
        <h5 class="text-xs pt-2 pb-2 uppercase">PHP</h5>
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Drupal">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/drupal.html" destination="/get-started/stacks/drupal.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Drupal
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Laravel">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/stacks/laravel.html" destination="/get-started/stacks/laravel.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Laravel
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-laravel-sidebar-id" aria-controls="laravel-sidebar-id" aria-expanded="false" aria-label="Laravel">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-laravel-sidebar-id" id="laravel-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/get-started.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Get started
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/environment-variables.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Environment variables
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/setup-redis.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Set up Redis
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/laravel-horizon.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Handle queues with Horizon
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/crons.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Cron jobs
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/blackfire.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Blackfire
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/laravel-telescope.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Debug with Laravel Telescope
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/laravel/faq.html" class="hover:text-skye-dark focus:text-skye-dark">
                        FAQ
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Magento">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/magento.html" destination="/get-started/stacks/magento.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Magento
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Symfony">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/stacks/symfony.html" destination="/get-started/stacks/symfony.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Symfony
              
              
              
              <span class="text-sm text-ebony bg-skye-light p-1 rounded ml-2">Partner</span>
          </a>

          
          

            
            <button class="py-2" id="nav-expand-symfony-sidebar-id" aria-controls="symfony-sidebar-id" aria-expanded="false" aria-label="Symfony">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-symfony-sidebar-id" id="symfony-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/get-started.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Get started
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/integration.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Symfony integration
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/environment-variables.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Environment variables
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/workers.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Workers
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/crons.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Cron jobs
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/blackfire.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Blackfire
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/local.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Local development
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/faq.html" class="hover:text-skye-dark focus:text-skye-dark">
                        FAQ
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/symfony/symfony-cli-tips.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Symfony CLI Tips
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-WordPress">
        <div class="flex items-center pl-4 justify-between">
          <a href="/get-started/stacks/wordpress.html" destination="/get-started/stacks/wordpress.html"  class="hover:text-skye-dark focus:text-skye-dark">
              WordPress
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-wordpress-sidebar-id" aria-controls="wordpress-sidebar-id" aria-expanded="false" aria-label="WordPress">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-wordpress-sidebar-id" id="wordpress-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/wordpress/composer.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Composer WordPress
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/wordpress/multisite.html" class="hover:text-skye-dark focus:text-skye-dark">
                        WordPress Multisite
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/wordpress/bedrock.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Bedrock WordPress
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/get-started/stacks/wordpress/vanilla.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Vanilla WordPress
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Pimcore PaaS">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/pimcore.html" destination="/get-started/stacks/pimcore.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Pimcore PaaS
              
              
              
              <span class="text-sm text-ebony bg-skye-light p-1 rounded ml-2">Partner</span>
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Shopware PaaS">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/stacks/shopware.html" destination="/get-started/stacks/shopware.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Shopware PaaS
              
              
              
              <span class="text-sm text-ebony bg-skye-light p-1 rounded ml-2">Partner</span>
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


      
        









  
  



  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-How to deploy AI">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/get-started/ai.html" destination="/get-started/ai.html"  class="hover:text-skye-dark focus:text-skye-dark">
        How to deploy AI
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-how-to-deploy-ai-sidebar-id" aria-controls="section-how-to-deploy-ai-sidebar-id" aria-expanded="false" aria-label="How to deploy AI">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-how-to-deploy-ai-sidebar-id" id="section-how-to-deploy-ai-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Host AI Agents">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/ai/aiagent.html" destination="/get-started/ai/aiagent.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Host AI Agents
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Hosting Model Context Protocal (MCP) Servers">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/ai/deploy-mcp.html" destination="/get-started/ai/deploy-mcp.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Hosting Model Context Protocal (MCP) Servers
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-The Upsun MCP Server">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/get-started/ai/using-the-mcp.html" destination="/get-started/ai/using-the-mcp.html"  class="hover:text-skye-dark focus:text-skye-dark">
              The Upsun MCP Server
              
              <span class="text-sm text-ebony bg-emerald-100 px-2 p-1 rounded ml-2">
    New
  </span>

              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


      
    

  
  


    </div>
  </div>

  
  
  
    
      
    
  
  
  
  <div x-data="{ expanded: false }" data-engagement-id="sidebar-learn">
    <h3 class="font-semibold">
      <button class="bg-no-repeat bg-right-2 w-[95%] py-4 pl-2 pr-6 my-2 text-left bg-grey" :style="expanded ? 'background-image: url(/images/icons/minus.svg);' : 'background-image: url(/images/icons/add.svg);'" @click="expanded = ! expanded" aria-controls="section-learn" aria-expanded="false">
        Learn
      </button>
    </h3>
    <div x-show="expanded" id="section-learn">
      





  
  



  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
      
      
        









  
  



  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-What is Upsun?">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/learn/overview.html" destination="/learn/overview.html"  class="hover:text-skye-dark focus:text-skye-dark">
        What is Upsun?
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-what-is-vendor/name-sidebar-id" aria-controls="section-what-is-vendor/name-sidebar-id" aria-expanded="false" aria-label="What is Upsun?">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-what-is-vendor/name-sidebar-id" id="section-what-is-vendor/name-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Philosophy">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/overview/philosophy.html" destination="/learn/overview/philosophy.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Philosophy
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-YAML">
        <div class="flex items-center pl-4 justify-between">
          <a href="/learn/overview/yaml.html" destination="/learn/overview/yaml.html"  class="hover:text-skye-dark focus:text-skye-dark">
              YAML
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-yaml-sidebar-id" aria-controls="yaml-sidebar-id" aria-expanded="false" aria-label="YAML">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-yaml-sidebar-id" id="yaml-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/learn/overview/yaml/what-is-yaml.html" class="hover:text-skye-dark focus:text-skye-dark">
                        What YAML is
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/learn/overview/yaml/yaml-structure.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Upsun YAML structure
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/learn/overview/yaml/platform-yaml-tags.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Upsun YAML tags
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Structure">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/overview/structure.html" destination="/learn/overview/structure.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Structure
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Build and deploy">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/overview/build-deploy.html" destination="/learn/overview/build-deploy.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Build and deploy
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Get support">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/overview/get-support.html" destination="/learn/overview/get-support.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Get support
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


      
        









  
  



  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Tutorials">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/learn/tutorials.html" destination="/learn/tutorials.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Tutorials
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-tutorials-sidebar-id" aria-controls="section-tutorials-sidebar-id" aria-expanded="false" aria-label="Tutorials">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-tutorials-sidebar-id" id="section-tutorials-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Convert to Upsun">
        <div class="flex items-center pl-4 justify-between">
          <a href="/learn/tutorials/migrating.html" destination="/learn/tutorials/migrating.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Convert to Upsun
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-convert-to-upsun-sidebar-id" aria-controls="convert-to-upsun-sidebar-id" aria-expanded="false" aria-label="Convert to Upsun">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-convert-to-upsun-sidebar-id" id="convert-to-upsun-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/learn/tutorials/migrating/from-fixed.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Converting from Upsun Fixed (formerly Platform.sh)
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Automate your code updates">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/tutorials/dependency-updates.html" destination="/learn/tutorials/dependency-updates.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Automate your code updates
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Restrict service access">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/tutorials/restrict-service-access.html" destination="/learn/tutorials/restrict-service-access.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Restrict service access
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Exporting data">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/tutorials/exporting.html" destination="/learn/tutorials/exporting.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Exporting data
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


      
        









  
  



  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Best practices">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/learn/bestpractices.html" destination="/learn/bestpractices.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Best practices
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-best-practices-sidebar-id" aria-controls="section-best-practices-sidebar-id" aria-expanded="false" aria-label="Best practices">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-best-practices-sidebar-id" id="section-best-practices-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-HTTP caching">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/bestpractices/http-caching.html" destination="/learn/bestpractices/http-caching.html"  class="hover:text-skye-dark focus:text-skye-dark">
              HTTP caching
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Monolith, headless or microservices?">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/bestpractices/oneormany.html" destination="/learn/bestpractices/oneormany.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Monolith, headless or microservices?
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Keep your Git repository clean">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/learn/bestpractices/clean-repository.html" destination="/learn/bestpractices/clean-repository.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Keep your Git repository clean
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


      
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  
    
    

  
  

  
  

  
  

  
  
    
    

  
  


    </div>
  </div>

  
  
  
    
      
    
  
  
  <div x-data="{ expanded: true }" data-engagement-id="sidebar-home">
    <h3 class="font-semibold">
      <button class="bg-no-repeat bg-right-2 w-[95%] py-4 pl-2 pr-6 my-2 text-left bg-grey" :style="expanded ? 'background-image: url(/images/icons/minus.svg);' : 'background-image: url(/images/icons/add.svg);'" @click="expanded = ! expanded" aria-controls="section-home" aria-expanded="true">
        Reference
      </button>
    </h3>
    <div x-show="expanded" id="section-home">
      





  
  



  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Configure apps">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/create-apps.html" destination="/create-apps.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Configure apps
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-configure-apps-sidebar-id" aria-controls="section-configure-apps-sidebar-id" aria-expanded="false" aria-label="Configure apps">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-configure-apps-sidebar-id" id="section-configure-apps-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Choose an image type">
        <div class="flex items-center pl-4 justify-between">
          <a href="/create-apps/app-reference.html" destination="/create-apps/app-reference.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Choose an image type
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-choose-an-image-type-sidebar-id" aria-controls="choose-an-image-type-sidebar-id" aria-expanded="false" aria-label="Choose an image type">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-choose-an-image-type-sidebar-id" id="choose-an-image-type-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/app-reference/single-runtime-image.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Single-runtime image
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/app-reference/composable-image.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Composable image
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Image properties">
        <div class="flex items-center pl-4 justify-between">
          <a href="/create-apps/image-properties.html" destination="/create-apps/image-properties.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Image properties
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-image-properties-sidebar-id" aria-controls="image-properties-sidebar-id" aria-expanded="false" aria-label="Image properties">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-image-properties-sidebar-id" id="image-properties-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/access.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        access
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/additional_hosts.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        additional_hosts
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/container_profile.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        container_profile
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/crons.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        crons
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/firewall.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        firewall
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/hooks.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        hooks
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/mounts.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        mounts
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/relationships.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        relationships
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/source.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        source
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/variables.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        variables
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/web.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        web
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/image-properties/workers.html" class="hover:text-skye-dark focus:text-skye-dark image-property-sidebar__link">
                        workers
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Source operations">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/create-apps/source-operations.html" destination="/create-apps/source-operations.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Source operations
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Runtime operations">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/create-apps/runtime-operations.html" destination="/create-apps/runtime-operations.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Runtime operations
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Configure what&amp;amp;rsquo;s served">
        <div class="flex items-center pl-4 justify-between">
          <a href="/create-apps/web.html" destination="/create-apps/web.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Configure what&rsquo;s served
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-configure-whatrsquos-served-sidebar-id" aria-controls="configure-whatrsquos-served-sidebar-id" aria-expanded="false" aria-label="Configure what&rsquo;s served">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-configure-whatrsquos-served-sidebar-id" id="configure-whatrsquos-served-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/web/php-basic.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PHP with front controller
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/web/rewrite-requests.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Rewrite requests
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/web/serve-different-directories.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Serve different paths
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/web/static.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Static sites
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/web/custom-headers.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Custom headers
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Multiple apps">
        <div class="flex items-center pl-4 justify-between">
          <a href="/create-apps/multi-app.html" destination="/create-apps/multi-app.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Multiple apps
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-multiple-apps-sidebar-id" aria-controls="multiple-apps-sidebar-id" aria-expanded="false" aria-label="Multiple apps">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-multiple-apps-sidebar-id" id="multiple-apps-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/multi-app/project-structure.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Choose a project structure
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/multi-app/routes.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Define routes
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/multi-app/relationships.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Define relationships
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Timezones">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/create-apps/timezone.html" destination="/create-apps/timezone.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Timezones
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Troubleshoot disks">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/create-apps/troubleshoot-disks.html" destination="/create-apps/troubleshoot-disks.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Troubleshoot disks
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Troubleshoot mounts">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/create-apps/troubleshoot-mounts.html" destination="/create-apps/troubleshoot-mounts.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Troubleshoot mounts
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Use build and deploy hooks">
        <div class="flex items-center pl-4 justify-between">
          <a href="/create-apps/hooks.html" destination="/create-apps/hooks.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Use build and deploy hooks
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-use-build-and-deploy-hooks-sidebar-id" aria-controls="use-build-and-deploy-hooks-sidebar-id" aria-expanded="false" aria-label="Use build and deploy hooks">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-use-build-and-deploy-hooks-sidebar-id" id="use-build-and-deploy-hooks-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/hooks/vary-hooks-by-environment.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Change hooks in different environments
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/hooks/hooks-comparison.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Comparison of hooks
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/create-apps/hooks/hooks-and-dependencies.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Use hooks with dependencies
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Work with workers">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/create-apps/workers.html" destination="/create-apps/workers.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Work with workers
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Add services">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/add-services.html" destination="/add-services.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Add services
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-add-services-sidebar-id" aria-controls="section-add-services-sidebar-id" aria-expanded="false" aria-label="Add services">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-add-services-sidebar-id" id="section-add-services-sidebar-id">


  
  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Chroma">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/chroma.html" destination="/add-services/chroma.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Chroma
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-ClickHouse">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/clickhouse.html" destination="/add-services/clickhouse.html"  class="hover:text-skye-dark focus:text-skye-dark">
              ClickHouse
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Elasticsearch">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/elasticsearch.html" destination="/add-services/elasticsearch.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Elasticsearch
              <span class="text-sm text-ebony bg-skye-light p-1 rounded ml-2">Premium</span>
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Edgee (Edge Analytics)">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/edgee.html" destination="/add-services/edgee.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Edgee (Edge Analytics)
              
              
              
              <span class="text-sm text-ebony bg-skye-light p-1 rounded ml-2">Partner</span>
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Gotenberg">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/gotenberg.html" destination="/add-services/gotenberg.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Gotenberg
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Headless Chrome">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/headless-chrome.html" destination="/add-services/headless-chrome.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Headless Chrome
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-InfluxDB">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/influxdb.html" destination="/add-services/influxdb.html"  class="hover:text-skye-dark focus:text-skye-dark">
              InfluxDB
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Kafka">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/kafka.html" destination="/add-services/kafka.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Kafka
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-MariaDB/MySQL">
        <div class="flex items-center pl-4 justify-between">
          <a href="/add-services/mysql.html" destination="/add-services/mysql.html"  class="hover:text-skye-dark focus:text-skye-dark">
              MariaDB/MySQL
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-mariadb/mysql-sidebar-id" aria-controls="mariadb/mysql-sidebar-id" aria-expanded="false" aria-label="MariaDB/MySQL">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-mariadb/mysql-sidebar-id" id="mariadb/mysql-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/add-services/mysql/mysql-readonly-replication.html" class="hover:text-skye-dark focus:text-skye-dark">
                        MariaDB read-only replication
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/add-services/mysql/mysql-replication.html" class="hover:text-skye-dark focus:text-skye-dark">
                        External replication
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/add-services/mysql/troubleshoot.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Troubleshoot
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Memcached">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/memcached.html" destination="/add-services/memcached.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Memcached
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Mercure">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/mercure.html" destination="/add-services/mercure.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Mercure
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-MongoDB">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/mongodb.html" destination="/add-services/mongodb.html"  class="hover:text-skye-dark focus:text-skye-dark">
              MongoDB
              <span class="text-sm text-ebony bg-skye-light p-1 rounded ml-2">Premium</span>
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Network Storage">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/network-storage.html" destination="/add-services/network-storage.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Network Storage
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-OpenSearch">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/opensearch.html" destination="/add-services/opensearch.html"  class="hover:text-skye-dark focus:text-skye-dark">
              OpenSearch
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-PostgreSQL">
        <div class="flex items-center pl-4 justify-between">
          <a href="/add-services/postgresql.html" destination="/add-services/postgresql.html"  class="hover:text-skye-dark focus:text-skye-dark">
              PostgreSQL
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-postgresql-sidebar-id" aria-controls="postgresql-sidebar-id" aria-expanded="false" aria-label="PostgreSQL">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-postgresql-sidebar-id" id="postgresql-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/add-services/postgresql/postgresql-readonly-replication.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Read-only replication
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Qdrant">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/qdrant.html" destination="/add-services/qdrant.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Qdrant
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-RabbitMQ">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/rabbitmq.html" destination="/add-services/rabbitmq.html"  class="hover:text-skye-dark focus:text-skye-dark">
              RabbitMQ
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Redis">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/redis.html" destination="/add-services/redis.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Redis
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Solr">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/solr.html" destination="/add-services/solr.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Solr
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Valkey">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/valkey.html" destination="/add-services/valkey.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Valkey
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Varnish">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/varnish.html" destination="/add-services/varnish.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Varnish
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Vault KMS">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/add-services/vault.html" destination="/add-services/vault.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Vault KMS
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Define routes">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/define-routes.html" destination="/define-routes.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Define routes
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-define-routes-sidebar-id" aria-controls="section-define-routes-sidebar-id" aria-expanded="false" aria-label="Define routes">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-define-routes-sidebar-id" id="section-define-routes-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Server Side Includes (SSI)">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/define-routes/ssi.html" destination="/define-routes/ssi.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Server Side Includes (SSI)
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-HTTP cache">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/define-routes/cache.html" destination="/define-routes/cache.html"  class="hover:text-skye-dark focus:text-skye-dark">
              HTTP cache
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-HTTPS">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/define-routes/https.html" destination="/define-routes/https.html"  class="hover:text-skye-dark focus:text-skye-dark">
              HTTPS
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Proxy routes">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/define-routes/proxy.html" destination="/define-routes/proxy.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Proxy routes
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Redirects">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/define-routes/redirects.html" destination="/define-routes/redirects.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Redirects
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

  
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Manage resources">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/manage-resources.html" destination="/manage-resources.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Manage resources
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-manage-resources-sidebar-id" aria-controls="section-manage-resources-sidebar-id" aria-expanded="false" aria-label="Manage resources">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-manage-resources-sidebar-id" id="section-manage-resources-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-How resources work on Upsun">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/manage-resources/how-resources-work.html" destination="/manage-resources/how-resources-work.html"  class="hover:text-skye-dark focus:text-skye-dark">
              How resources work on Upsun
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Resource initialization">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/manage-resources/resource-init.html" destination="/manage-resources/resource-init.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Resource initialization
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Resource configuration">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/manage-resources/adjust-resources.html" destination="/manage-resources/adjust-resources.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Resource configuration
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Autoscaling">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/manage-resources/autoscaling.html" destination="/manage-resources/autoscaling.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Autoscaling
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Guaranteed resources">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/manage-resources/guaranteed-resources.html" destination="/manage-resources/guaranteed-resources.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Guaranteed resources
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Project build resources">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/manage-resources/build-resources.html" destination="/manage-resources/build-resources.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Project build resources
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Languages">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/languages.html" destination="/languages.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Languages
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-languages-sidebar-id" aria-controls="section-languages-sidebar-id" aria-expanded="false" aria-label="Languages">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-languages-sidebar-id" id="section-languages-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-C#/.NET Core">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/languages/dotnet.html" destination="/languages/dotnet.html"  class="hover:text-skye-dark focus:text-skye-dark">
              C#/.NET Core
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Elixir">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/languages/elixir.html" destination="/languages/elixir.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Elixir
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Go">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/languages/go.html" destination="/languages/go.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Go
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Java">
        <div class="flex items-center pl-4 justify-between">
          <a href="/languages/java.html" destination="/languages/java.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Java
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-java-sidebar-id" aria-controls="java-sidebar-id" aria-expanded="false" aria-label="Java">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-java-sidebar-id" id="java-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/java/migration.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Moving to Upsun
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/java/tuning.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Tuning
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-JavaScript/Node.js">
        <div class="flex items-center pl-4 justify-between">
          <a href="/languages/nodejs.html" destination="/languages/nodejs.html"  class="hover:text-skye-dark focus:text-skye-dark">
              JavaScript/Node.js
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-javascript/nodejs-sidebar-id" aria-controls="javascript/nodejs-sidebar-id" aria-expanded="false" aria-label="JavaScript/Node.js">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-javascript/nodejs-sidebar-id" id="javascript/nodejs-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/nodejs/debug.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Debugging
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/nodejs/node-version.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Manage Node.js versions
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-PHP">
        <div class="flex items-center pl-4 justify-between">
          <a href="/languages/php.html" destination="/languages/php.html"  class="hover:text-skye-dark focus:text-skye-dark">
              PHP
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-php-sidebar-id" aria-controls="php-sidebar-id" aria-expanded="false" aria-label="PHP">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-php-sidebar-id" id="php-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/extensions.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Extensions
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/tuning.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PHP performance tuning
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/fpm.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PHP-FPM sizing
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/frankenphp.html" class="hover:text-skye-dark focus:text-skye-dark">
                        FrankenPHP
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/xdebug.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Xdebug
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/redis.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Custom Redis
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/swoole.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Swoole
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/composer-auth.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Authenticated Composer
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/php/troubleshoot.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Troubleshoot
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Python">
        <div class="flex items-center pl-4 justify-between">
          <a href="/languages/python.html" destination="/languages/python.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Python
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-python-sidebar-id" aria-controls="python-sidebar-id" aria-expanded="false" aria-label="Python">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-python-sidebar-id" id="python-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/python/dependencies.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Manage dependencies
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/python/server.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Web servers
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/languages/python/python-version.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Python in non-Python containers
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Ruby">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/languages/ruby.html" destination="/languages/ruby.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Ruby
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Rust">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/languages/rust.html" destination="/languages/rust.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Rust
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Development">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/development.html" destination="/development.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Development
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-development-sidebar-id" aria-controls="section-development-sidebar-id" aria-expanded="false" aria-label="Development">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-development-sidebar-id" id="section-development-sidebar-id">


  
  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Local development">
        <div class="flex items-center pl-4 justify-between">
          <a href="/development/local.html" destination="/development/local.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Local development
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-local-development-sidebar-id" aria-controls="local-development-sidebar-id" aria-expanded="false" aria-label="Local development">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-local-development-sidebar-id" id="local-development-sidebar-id">

              
              

                
                
                  
                  
                    <h5 class="text-xs my-1 uppercase">Integrated environments</h5>
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/local/ddev.html" class="hover:text-skye-dark focus:text-skye-dark">
                        DDEV
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                    <h5 class="text-xs my-1 uppercase">Supported environments</h5>
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/local/tethered.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Tethered
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/local/untethered.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Untethered
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Variables overview">
        <div class="flex items-center pl-4 justify-between">
          <a href="/development/variables.html" destination="/development/variables.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Variables overview
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-variables-overview-sidebar-id" aria-controls="variables-overview-sidebar-id" aria-expanded="false" aria-label="Variables overview">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-variables-overview-sidebar-id" id="variables-overview-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/variables/set-variables.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Set variables
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/variables/use-variables.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Use variables
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Access your site">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/access-site.html" destination="/development/access-site.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Access your site
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Transfer files">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/file-transfer.html" destination="/development/file-transfer.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Transfer files
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Headers">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/headers.html" destination="/development/headers.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Headers
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Email">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/email.html" destination="/development/email.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Email
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Private repositories">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/private-repository.html" destination="/development/private-repository.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Private repositories
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Git submodules">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/submodules.html" destination="/development/submodules.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Git submodules
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Connect with SSH">
        <div class="flex items-center pl-4 justify-between">
          <a href="/development/ssh.html" destination="/development/ssh.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Connect with SSH
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-connect-with-ssh-sidebar-id" aria-controls="connect-with-ssh-sidebar-id" aria-expanded="false" aria-label="Connect with SSH">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-connect-with-ssh-sidebar-id" id="connect-with-ssh-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/ssh/ssh-keys.html" class="hover:text-skye-dark focus:text-skye-dark">
                        SSH keys
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/ssh/troubleshoot-ssh.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Troubleshoot SSH
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Regions">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/regions.html" destination="/development/regions.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Regions
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-502 error resolutions">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/502-errors.html" destination="/development/502-errors.html"  class="hover:text-skye-dark focus:text-skye-dark">
              502 error resolutions
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Troubleshoot">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/development/troubleshoot.html" destination="/development/troubleshoot.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Troubleshoot
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Sanitize databases">
        <div class="flex items-center pl-4 justify-between">
          <a href="/development/sanitize-db.html" destination="/development/sanitize-db.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Sanitize databases
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-sanitize-databases-sidebar-id" aria-controls="sanitize-databases-sidebar-id" aria-expanded="false" aria-label="Sanitize databases">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-sanitize-databases-sidebar-id" id="sanitize-databases-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/sanitize-db/mariadb.html" class="hover:text-skye-dark focus:text-skye-dark">
                        MariaDB and Drupal
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/sanitize-db/postgresql.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PostgreSQL and Django
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/development/sanitize-db/postgresql-symfony.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PostgreSQL and Symfony
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Integrations">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/integrations.html" destination="/integrations.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Integrations
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-integrations-sidebar-id" aria-controls="section-integrations-sidebar-id" aria-expanded="false" aria-label="Integrations">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-integrations-sidebar-id" id="section-integrations-sidebar-id">


  
  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Overview">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/integrations/overview.html" destination="/integrations/overview.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Overview
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Activity scripts">
        <div class="flex items-center pl-4 justify-between">
          <a href="/integrations/activity.html" destination="/integrations/activity.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Activity scripts
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-activity-scripts-sidebar-id" aria-controls="activity-scripts-sidebar-id" aria-expanded="false" aria-label="Activity scripts">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-activity-scripts-sidebar-id" id="activity-scripts-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/activity/reference.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Activity reference
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/activity/utility.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Utility routines
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/activity/discord.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Example: Discord
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/activity/slack.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Example: Slack
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/activity/webhooks.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Webhooks
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Source integrations">
        <div class="flex items-center pl-4 justify-between">
          <a href="/integrations/source.html" destination="/integrations/source.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Source integrations
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-source-integrations-sidebar-id" aria-controls="source-integrations-sidebar-id" aria-expanded="false" aria-label="Source integrations">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-source-integrations-sidebar-id" id="source-integrations-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/source/bitbucket.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Bitbucket
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/source/github.html" class="hover:text-skye-dark focus:text-skye-dark">
                        GitHub
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/source/gitlab.html" class="hover:text-skye-dark focus:text-skye-dark">
                        GitLab
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/integrations/source/troubleshoot.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Resolve access
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Fastly CDN">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/integrations/fastly-cdn.html" destination="/integrations/fastly-cdn.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Fastly CDN
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Health notifications">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/integrations/notifications.html" destination="/integrations/notifications.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Health notifications
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Increase observability">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/increase-observability.html" destination="/increase-observability.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Increase observability
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-increase-observability-sidebar-id" aria-controls="section-increase-observability-sidebar-id" aria-expanded="false" aria-label="Increase observability">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-increase-observability-sidebar-id" id="section-increase-observability-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Infrastructure metrics">
        <div class="flex items-center pl-4 justify-between">
          <a href="/increase-observability/metrics.html" destination="/increase-observability/metrics.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Infrastructure metrics
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-infrastructure-metrics-sidebar-id" aria-controls="infrastructure-metrics-sidebar-id" aria-expanded="false" aria-label="Infrastructure metrics">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-infrastructure-metrics-sidebar-id" id="infrastructure-metrics-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/metrics/http-metrics.html" class="hover:text-skye-dark focus:text-skye-dark">
                        HTTP metrics
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/metrics/understand-metrics.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Understand metrics
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Application metrics">
        <div class="flex items-center pl-4 justify-between">
          <a href="/increase-observability/application-metrics.html" destination="/increase-observability/application-metrics.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Application metrics
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-application-metrics-sidebar-id" aria-controls="application-metrics-sidebar-id" aria-expanded="false" aria-label="Application metrics">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-application-metrics-sidebar-id" id="application-metrics-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/cron-metrics.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Monitor Cron job executions
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/understanding.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Understanding application observablity
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/blackfire.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Blackfire for PHP and Python
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/cont-prof-comparison.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Comparing Continuous Profiling Timeframes
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/cont-prof.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Continuous Profiling dashboard
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/go.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Go continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/java.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Java continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/nodejs.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Node.js continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/php.html" class="hover:text-skye-dark focus:text-skye-dark">
                        PHP continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/python.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Python continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/ruby.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Ruby continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/application-metrics/rust.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Rust continuous profiler
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Consume logs">
        <div class="flex items-center pl-4 justify-between">
          <a href="/increase-observability/logs.html" destination="/increase-observability/logs.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Consume logs
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-consume-logs-sidebar-id" aria-controls="consume-logs-sidebar-id" aria-expanded="false" aria-label="Consume logs">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-consume-logs-sidebar-id" id="consume-logs-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/logs/access-logs.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Access logs
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/increase-observability/logs/forward-logs.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Forward Upsun and Blackfire logs
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










  

<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Manage environments">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/environments.html" destination="/environments.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Manage environments
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-manage-vendor/name-environments-sidebar-id" aria-controls="section-manage-vendor/name-environments-sidebar-id" aria-expanded="false" aria-label="Manage environments">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-manage-vendor/name-environments-sidebar-id" id="section-manage-vendor/name-environments-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Back up an environment">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/backup.html" destination="/environments/backup.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Back up an environment
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Restore an environment">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/restore.html" destination="/environments/restore.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Restore an environment
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Cancel an activity">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/cancel-activity.html" destination="/environments/cancel-activity.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Cancel an activity
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Change parent">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/change-parent.html" destination="/environments/change-parent.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Change parent
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Configure HTTP access control">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/http-access-control.html" destination="/environments/http-access-control.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Configure HTTP access control
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Deactivate an environment">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/deactivate-environment.html" destination="/environments/deactivate-environment.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Deactivate an environment
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Manage search indexing">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/search-engine-visibility.html" destination="/environments/search-engine-visibility.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Manage search indexing
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Rename the default environment">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/environments/default-environment.html" destination="/environments/default-environment.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Rename the default environment
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Manage projects">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/projects.html" destination="/projects.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Manage projects
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-manage-projects-sidebar-id" aria-controls="section-manage-projects-sidebar-id" aria-expanded="false" aria-label="Manage projects">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-manage-projects-sidebar-id" id="section-manage-projects-sidebar-id">


  
  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Change regions">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/projects/region-migration.html" destination="/projects/region-migration.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Change regions
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Change the project timezone">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/projects/change-project-timezone.html" destination="/projects/change-project-timezone.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Change the project timezone
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Delete a project">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/projects/delete-project.html" destination="/projects/delete-project.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Delete a project
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Custom domains">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/domains.html" destination="/domains.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Custom domains
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-custom-domains-sidebar-id" aria-controls="section-custom-domains-sidebar-id" aria-expanded="false" aria-label="Custom domains">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-custom-domains-sidebar-id" id="section-custom-domains-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Set up a custom domain">
        <div class="flex items-center pl-4 justify-between">
          <a href="/domains/steps.html" destination="/domains/steps.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Set up a custom domain
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-set-up-a-custom-domain-sidebar-id" aria-controls="set-up-a-custom-domain-sidebar-id" aria-expanded="false" aria-label="Set up a custom domain">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-set-up-a-custom-domain-sidebar-id" id="set-up-a-custom-domain-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/steps/dns.html" class="hover:text-skye-dark focus:text-skye-dark">
                        DNS and apex domains
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/steps/tls.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Custom TLS certificates
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/steps/subdomains.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Handle subdomains
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/steps/custom-domains-preview-environments.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Preview environments
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Content delivery networks">
        <div class="flex items-center pl-4 justify-between">
          <a href="/domains/cdn.html" destination="/domains/cdn.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Content delivery networks
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-content-delivery-networks-sidebar-id" aria-controls="content-delivery-networks-sidebar-id" aria-expanded="false" aria-label="Content delivery networks">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-content-delivery-networks-sidebar-id" id="content-delivery-networks-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/cdn/fastly.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Fastly setup
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/cdn/managed-fastly.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Managed Fastly CDN
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/domains/cdn/cloudflare.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Cloudflare setup
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Troubleshooting">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/domains/troubleshoot.html" destination="/domains/troubleshoot.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Troubleshooting
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  
    
  










<div class="text-sm" x-data="{ topExpanded: true }" data-engagement-id="sidebar-subsection-Administration">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/administration.html" destination="/administration.html"  class="hover:text-skye-dark focus:text-skye-dark text-skye-dark">
        Administration
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-administration-sidebar-id" aria-controls="section-administration-sidebar-id" aria-expanded="true" aria-label="Administration">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-administration-sidebar-id" id="section-administration-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: true }" data-engagement-id="sidebar-subsection-nested-Command line interface (CLI)">
        <div class="flex items-center pl-4 justify-between">
          <a href="/administration/cli.html" destination="/administration/cli.html"  class="hover:text-skye-dark focus:text-skye-dark text-skye-dark">
              Command line interface (CLI)
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-command-line-interface-cli-sidebar-id" aria-controls="command-line-interface-cli-sidebar-id" aria-expanded="true" aria-label="Command line interface (CLI)">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-command-line-interface-cli-sidebar-id" id="command-line-interface-cli-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/cli/api-tokens.html" class="hover:text-skye-dark focus:text-skye-dark">
                        API tokens
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/cli/reference.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Command reference
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/cli/init.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Initialize a project
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Console">
        <div class="flex items-center pl-4 justify-between">
          <a href="/administration/web.html" destination="/administration/web.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Console
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-console-sidebar-id" aria-controls="console-sidebar-id" aria-expanded="false" aria-label="Console">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-console-sidebar-id" id="console-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/web/configure-project.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Configure a project
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/web/configure-environment.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Configure environments
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Organizations">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/administration/organizations.html" destination="/administration/organizations.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Organizations
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Teams">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/administration/teams.html" destination="/administration/teams.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Teams
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
      
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Users">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/administration/users.html" destination="/administration/users.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Users
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Pricing">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/administration/pricing.html" destination="/administration/pricing.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Pricing
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Billing">
        <div class="flex items-center pl-4 justify-between">
          <a href="/administration/billing.html" destination="/administration/billing.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Billing
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-billing-sidebar-id" aria-controls="billing-sidebar-id" aria-expanded="false" aria-label="Billing">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-billing-sidebar-id" id="billing-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/billing/billing-admin.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Administer your billing
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/billing/monitor-billing.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Monitor your billing information
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/billing/payment-faq.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Payment FAQ
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/billing/add-on-subscription.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Subscribe to an add-on
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Server upgrades">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/administration/servers.html" destination="/administration/servers.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Server upgrades
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Security">
        <div class="flex items-center pl-4 justify-between">
          <a href="/administration/security.html" destination="/administration/security.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Security
              
              
              
              
          </a>

          
          

            
            <button class="py-2" id="nav-expand-security-sidebar-id" aria-controls="security-sidebar-id" aria-expanded="false" aria-label="Security">
  <svg :class="secondExpanded ? '' : '-rotate-90'" @click="secondExpanded = ! secondExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
        </div>
            <ul x-show="secondExpanded" class="pl-4 py-2" aria-labelledby="nav-expand-security-sidebar-id" id="security-sidebar-id">

              
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/security/mfa.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Multifactor Authentication (MFA)
                        
                        
                        
                    </a>
                  </li>
                
              

                
                
                  
                  
                  
                  <li class="border-l border-stone py-1 pl-4">
                    <a href="/administration/security/sso.html" class="hover:text-skye-dark focus:text-skye-dark">
                        Single Sign-On (SSO)
                        
                        
                        
                    </a>
                  </li>
                
              

            </ul>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Security and compliance">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/security.html" destination="/security.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Security and compliance
        
        
        
        
      </a>

    </h4>

    
    
      <button class="py-2" id="nav-expand-section-security-and-compliance-sidebar-id" aria-controls="section-security-and-compliance-sidebar-id" aria-expanded="false" aria-label="Security and compliance">
  <svg :class="topExpanded ? '' : '-rotate-90'" @click="topExpanded = ! topExpanded" width="24" height="24" viewBox="0 0 24 24" fill="current" xmlns="http://www.w3.org/2000/svg" role="img" aria-hidden="true"><path d="M6.90002 9.8999C6.90002 9.5999 7.00002 9.3999 7.20002 9.1999C7.60002 8.7999 8.20002 8.7999 8.60002 9.1999L12.1 12.6999L15.6 9.1999C16 8.7999 16.6 8.7999 17 9.1999C17.4 9.5999 17.4 10.1999 17 10.5999L12.8 14.7999C12.4 15.1999 11.8 15.1999 11.4 14.7999L7.20002 10.5999C7.00002 10.3999 6.90002 10.1999 6.90002 9.8999Z"></path></svg>
</button>
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-security-and-compliance-sidebar-id" id="section-security-and-compliance-sidebar-id">


  
  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Fastly WAF">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/security/fastly-waf.html" destination="/security/fastly-waf.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Fastly WAF
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Upsun WAF">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/security/waf.html" destination="/security/waf.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Upsun WAF
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Data retention">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/security/data-retention.html" destination="/security/data-retention.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Data retention
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  
    
    
    
    
    

    
    
    
    
      
    
    
      
      
      <li x-data="{ secondExpanded: false }" data-engagement-id="sidebar-subsection-nested-Project isolation">
        <div class="flex items-center pl-4 justify-between py-2 pl-4 ">
          <a href="/security/project-isolation.html" destination="/security/project-isolation.html"  class="hover:text-skye-dark focus:text-skye-dark">
              Project isolation
              
              
              
              
          </a>

          
          
        </div>
          

      </li>
    

  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Glossary">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/glossary.html" destination="/glossary.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Glossary
        
        
        
        
      </a>

    </h4>

    
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-glossary-sidebar-id" id="section-glossary-sidebar-id">


  
  


  </ul>
</div>


    
  

  
  

    











  
  










<div class="text-sm" x-data="{ topExpanded: false }" data-engagement-id="sidebar-subsection-Request features">
  
  
  <div class="pl-8 pr-2 flex items-center justify-between min-h-[2.5rem]">
    <h4 class="pr-2 font-semibold">
      <a href="/request-features.html" destination="/request-features.html"  class="hover:text-skye-dark focus:text-skye-dark">
        Request features
        
        
        
        
      </a>

    </h4>

    
    
  </div>
  <ul x-show="topExpanded" class="pl-12" aria-labelledby="nav-expand-section-request-features-sidebar-id" id="section-request-features-sidebar-id">


  
  


  </ul>
</div>


    
  

  
  

  
  

  
  

  
  


    </div>
  </div>




  

      <div x-data="{ expanded: false }">
        <h3 class="font-semibold">
          <button class="bg-no-repeat bg-right-2 w-[95%] py-4 pl-2 pr-6 my-2 text-left bg-grey" :style="expanded ? 'background-image: url(/images/icons/minus.svg);' : 'background-image: url(/images/icons/external_link.svg);'" @click="location.href = 'https://docs.upsun.com/api/'" aria-expanded="false">
            API Documentation
          </button>
        </h3>
      </div>

  



  </div>
  

</nav>



      
      <main class="md:col-span-8 xl:max-w-[120ch] xl:text-lg px-4 md:pr-0 md:pl-8 pt-4 pb-12 print:border-none print:max-w-full xl:print:max-w-full print:text-sm xl:print:text-sm" data-engagement-id="main-content-section">

  
  <div
  >

    






<div class="flex justify-end mr-4">
  
  
  <div class="hidden md:block mb-6 mr-2 text-right">
    <a href="/administration/cli.md"
        data-engagement-id="view-in-markdown"
        class="print:hidden font-semibold bg-skye text-white hover:bg-skye-dark focus:bg-skye-dark px-4 py-2 font-['Space_Grotesk'] text-xs rounded-full inline-flex items-center gap-2"
        title="Open this page in a markdown format. This format is easier for AI and other tools to read."
        target="_blank">
      View in markdown
    </a>
  </div>
  

  
  
    
<div class="hidden md:block mb-6 mr-2 text-right">
  
  <a href="https://github.com/platformsh/platformsh-docs/edit/main/sites/upsun/src/administration/cli/_index.md" rel="noopener" target="_blank" class="print:hidden font-semibold bg-gray-400 text-white hover:bg-ebony focus:bg-ebony pl-4 pr-3 py-2 font-['Space_Grotesk'] text-xs rounded-full inline-flex items-center gap-2">
    
    Edit page<svg xmlns="http://www.w3.org/2000/svg" width="12" height="12" viewBox="0 0 24 24" fill="none" stroke="currentColor" stroke-width="2" stroke-linecap="round" stroke-linejoin="round" class="inline">
      <path d="M17 3a2.85 2.83 0 1 1 4 4L7.5 20.5 2 22l1.5-5.5Z"/>
      <path d="m15 5 4 4"/>
    </svg>
  </a>
</div>

  
</div>



  
  
  
    
  
  
  <h1 class="text-2xl mb-8 xl:text-4xl font-black">Command line interface (CLI)</h1>


<div class="grid md:grid-cols-[minmax(0,1fr),270px] md:gap-4 md:pr-4 print:block">

  <div class="print:hidden max-w-[92vw] md:max-w-none md:order-2 md:top-24 md:sticky md:h-[calc(100vh-6rem)] md:overflow-y-auto border-t border-stone" data-engagement-id="main-content-right-sidebar">
    
    
      <div class="border border-stone border-t-0 px-6 pt-1 pb-4 mb-8 md:mb-0 text-sm [&_a]:text-skye-dark hover:[&_a]:underline focus:[&_a]:underline [&_ul_ul]:pl-4 [&_nav_ul>li]:mb-2 [&_nav_ul_ul>li]:mt-2" data-engagement-id="content-navigation">

        
        <h3 class="pt-4 pb-2 font-light text-base text-slate"><a href="/">Back to home</a></h3>
        

        <h3 class="pt-4 pb-2 font-light text-base text-slate">On this page</h3>
        <nav id="TableOfContents">
  <ul>
    <li><a href="#1-install">1. Install</a></li>
    <li><a href="#2-authenticate">2. Authenticate</a></li>
    <li><a href="#3-use">3. Use</a>
      <ul>
        <li><a href="#select-the-right-project-and-environment">Select the right project and environment</a></li>
        <li><a href="#choose-between-the-cli-and-git-commands">Choose between the CLI and Git commands</a></li>
        <li><a href="#customize-the-cli">Customize the CLI</a></li>
        <li><a href="#autocomplete-commands">Autocomplete commands</a></li>
        <li><a href="#run-commands-on-your-container">Run commands on your container</a></li>
        <li><a href="#update-the-cli">Update the CLI</a></li>
      </ul>
    </li>
    <li><a href="#upgrade-from-the-legacy-cli">Upgrade from the legacy CLI</a></li>
  </ul>
</nav>
      </div>
    

    
    
      

    <div
      class="bg-gradient-to-b from-[#FF4A11] from-0% via-[#ED49F0] via-45% to-[#DDF933] to-100% rounded-2xl p-[1px] mt-1 mb-4" data-engagement-id="trial-promotion-section">
      <div class="rounded-2xl p-5 bg-[#f9f9f9] flex-col justify-start items-start gap-4 inline-flex">
        
        
        <div
          class="bg-clip-text text-transparent bg-gradient-to-r from-[#806BFF] to-[#ED49F0] text-xl font-bold leading-normal">
          Try Upsun for 15 days
        </div>
        <div class="main-section justify-start items-start gap-2.5 inline-flex">
          
          <div class="artwork">
            <svg xmlns="http://www.w3.org/2000/svg" width="26" height="26" viewBox="0 0 26 26" fill="none">
              <path
                d="M3.65166 6.5473C3.65166 5.77459 3.9607 5.03352 4.51081 4.48712C5.06092 3.94073 5.80702 3.63376 6.58499 3.63376H7.91832C8.69285 3.63332 9.43578 3.32864 9.98499 2.78619L10.9183 1.85915C11.1909 1.58687 11.515 1.37079 11.872 1.22335C12.2289 1.0759 12.6117 1 12.9983 1C13.3849 1 13.7677 1.0759 14.1247 1.22335C14.4816 1.37079 14.8057 1.58687 15.0783 1.85915L16.0117 2.78619C16.5609 3.32864 17.3038 3.63332 18.0783 3.63376H19.4117C20.1896 3.63376 20.9357 3.94073 21.4858 4.48712C22.0359 5.03352 22.345 5.77459 22.345 6.5473V7.87164C22.3454 8.64095 22.6522 9.37886 23.1983 9.92436L24.1317 10.8514C24.4058 11.1222 24.6233 11.4441 24.7718 11.7986C24.9202 12.1532 24.9966 12.5334 24.9966 12.9174C24.9966 13.3014 24.9202 13.6816 24.7718 14.0361C24.6233 14.3907 24.4058 14.7126 24.1317 14.9833L23.1983 15.9104C22.6522 16.4559 22.3454 17.1938 22.345 17.9631V19.2874C22.345 20.0601 22.0359 20.8012 21.4858 21.3476C20.9357 21.894 20.1896 22.201 19.4117 22.201H18.0783C17.3038 22.2014 16.5609 22.5061 16.0117 23.0485L15.0783 23.9756C14.8057 24.2479 14.4816 24.4639 14.1247 24.6114C13.7677 24.7588 13.3849 24.8347 12.9983 24.8347C12.6117 24.8347 12.2289 24.7588 11.872 24.6114C11.515 24.4639 11.1909 24.2479 10.9183 23.9756L9.98499 23.0485C9.43578 22.5061 8.69285 22.2014 7.91832 22.201H6.58499C5.80702 22.201 5.06092 21.894 4.51081 21.3476C3.9607 20.8012 3.65166 20.0601 3.65166 19.2874V17.9631C3.65121 17.1938 3.34446 16.4559 2.79832 15.9104L1.86499 14.9833C1.59086 14.7126 1.37331 14.3907 1.22487 14.0361C1.07642 13.6816 1 13.3014 1 12.9174C1 12.5334 1.07642 12.1532 1.22487 11.7986C1.37331 11.4441 1.59086 11.1222 1.86499 10.8514L2.79832 9.92436C3.34446 9.37886 3.65121 8.64095 3.65166 7.87164V6.5473Z"
                fill="#DDF933"/>
              <path d="M8.98499 16.8775L16.985 8.93147Z" fill="#DDF933"/>
              <path
                d="M9.65165 10.2558C10.0198 10.2558 10.3183 9.95934 10.3183 9.59364C10.3183 9.22793 10.0198 8.93147 9.65165 8.93147C9.28346 8.93147 8.98499 9.22793 8.98499 9.59364C8.98499 9.95934 9.28346 10.2558 9.65165 10.2558Z"
                fill="#DDF933"/>
              <path
                d="M16.3183 16.8768C16.6865 16.8768 16.985 16.5804 16.985 16.2147C16.985 15.849 16.6865 15.5525 16.3183 15.5525C15.9501 15.5525 15.6517 15.849 15.6517 16.2147C15.6517 16.5804 15.9501 16.8768 16.3183 16.8768Z"
                fill="#DDF933"/>
              <path
                d="M8.98499 16.8775L16.985 8.93147M3.65166 6.5473C3.65166 5.77459 3.9607 5.03352 4.51081 4.48712C5.06092 3.94073 5.80702 3.63376 6.58499 3.63376H7.91832C8.69285 3.63332 9.43578 3.32864 9.98499 2.78619L10.9183 1.85915C11.1909 1.58687 11.515 1.37079 11.872 1.22335C12.2289 1.0759 12.6117 1 12.9983 1C13.3849 1 13.7677 1.0759 14.1247 1.22335C14.4816 1.37079 14.8057 1.58687 15.0783 1.85915L16.0117 2.78619C16.5609 3.32864 17.3038 3.63332 18.0783 3.63376H19.4117C20.1896 3.63376 20.9357 3.94073 21.4858 4.48712C22.0359 5.03352 22.345 5.77459 22.345 6.5473V7.87164C22.3454 8.64095 22.6522 9.37886 23.1983 9.92436L24.1317 10.8514C24.4058 11.1222 24.6233 11.4441 24.7718 11.7986C24.9202 12.1532 24.9966 12.5334 24.9966 12.9174C24.9966 13.3014 24.9202 13.6816 24.7718 14.0361C24.6233 14.3907 24.4058 14.7126 24.1317 14.9833L23.1983 15.9104C22.6522 16.4559 22.3454 17.1938 22.345 17.9631V19.2874C22.345 20.0601 22.0359 20.8012 21.4858 21.3476C20.9357 21.894 20.1896 22.201 19.4117 22.201H18.0783C17.3038 22.2014 16.5609 22.5061 16.0117 23.0485L15.0783 23.9756C14.8057 24.2479 14.4816 24.4639 14.1247 24.6114C13.7677 24.7588 13.3849 24.8347 12.9983 24.8347C12.6117 24.8347 12.2289 24.7588 11.872 24.6114C11.515 24.4639 11.1909 24.2479 10.9183 23.9756L9.98499 23.0485C9.43578 22.5061 8.69285 22.2014 7.91832 22.201H6.58499C5.80702 22.201 5.06092 21.894 4.51081 21.3476C3.9607 20.8012 3.65166 20.0601 3.65166 19.2874V17.9631C3.65121 17.1938 3.34446 16.4559 2.79832 15.9104L1.86499 14.9833C1.59086 14.7126 1.37331 14.3907 1.22487 14.0361C1.07642 13.6816 1 13.3014 1 12.9174C1 12.5334 1.07642 12.1532 1.22487 11.7986C1.37331 11.4441 1.59086 11.1222 1.86499 10.8514L2.79832 9.92436C3.34446 9.37886 3.65121 8.64095 3.65166 7.87164V6.5473ZM10.3183 9.59364C10.3183 9.95934 10.0198 10.2558 9.65165 10.2558C9.28346 10.2558 8.98499 9.95934 8.98499 9.59364C8.98499 9.22793 9.28346 8.93147 9.65165 8.93147C10.0198 8.93147 10.3183 9.22793 10.3183 9.59364ZM16.985 16.2147C16.985 16.5804 16.6865 16.8768 16.3183 16.8768C15.9501 16.8768 15.6517 16.5804 15.6517 16.2147C15.6517 15.849 15.9501 15.5525 16.3183 15.5525C16.6865 15.5525 16.985 15.849 16.985 16.2147Z"
                stroke="black" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"/>
            </svg>
          </div>
          
          <div class="cta-text main-copy flex-col justify-start items-start gap-2 inline-flex">
            <div class="cta-body a">
              After that, enjoy the same game-changing Upsun features for less with the <a href="https://upsun.com/blog/first-project-incentive/" target="_blank" rel="noopener">First Project Incentive</a>!¹ A monthly $19 perk!
            </div>

          </div>
        </div>
        <a href="https://upsun.com/register/" class="px-6 py-2 bg-[#6046FF] hover:!bg-[#4D38CC] rounded-3xl text-white text-center text-sm font-semibold" data-engagement-id="trial-activation-button">
          Activate your 15-day trial
        </a>
        <div class="cta-terms">
          ¹Terms and conditions apply
        </div>
      </div>
    </div>
    

  </div>

  <div class="prose xl:prose-lg max-w-[96vw] md:max-w-full w-full prose-code:!mb-0 prose-h2:text-xl prose-h3:text-xl prose-h4:text-lg">
    
    

    
    
    





   

   

   



    

    
    

    
    

    
    


<!-- shortcode start description -->
<p>See how to use and manage your Upsun projects directly from your terminal. Anything you can do within the Console can be done with the CLI.</p>
<!-- shortcode end description -->
<p>The CLI uses the git interface and the <a href="https://api.platform.sh/docs/" target="_blank" rel="noopener">Upsun REST API</a> to accomplish tasks.
Its source code is hosted on <a href="https://github.com/platformsh/cli" target="_blank" rel="noopener">GitHub</a>.</p>
<h2 id="1-install" class="scroll-mt-24"> 1. Install <a data-engagement-id="content-section-anchor" class="headline-hash" href="#1-install"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h2>
<p>To install the CLI, use a <a href="https://github.com/platformsh/cli#user-content-bash-installer">Bash installation script</a>.
You can also install with <a href="https://brew.sh/">Homebrew</a> (on Linux, macOS, or the Windows Subsystem for Linux)
or <a href="https://scoop.sh/">Scoop</a> (on Windows. You must also have the <a href="https://github.com/ScoopInstaller/Extras">Extras bucket</a> already installed for this).</p>







<div class="mb-4"
x-data="{
    codetab: 'default',
    switchCodetab(targetCodetab) {
      this.codetab = targetCodetab;
    }
  }"
>

  
    <ul class="flex list-none border-b border-stone !m-0 !pl-0" role="tablist" data-engagement-id="codetabs-section"><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'default' }" role="tab" :aria-selected="codetab === 'default'" @click="switchCodetab('default')">Installation script</a>
          </li><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'homebrew' }" role="tab" :aria-selected="codetab === 'homebrew'" @click="switchCodetab('homebrew')">Homebrew</a>
          </li><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'scoop' }" role="tab" :aria-selected="codetab === 'scoop'" @click="switchCodetab('scoop')">Scoop</a>
          </li></ul>

    
    <div class="border border-stone px-5 pt-6 pb-4" style="border-color: rgb(231 231 231 / var(--tw-border-opacity)) !important;"><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'default'" :aria-hidden="codetab !== 'default'"><div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">curl -fsSL https://raw.githubusercontent.com/platformsh/cli/main/installer.sh <span class="p">|</span> <span class="nv">VENDOR</span><span class="o">=</span>upsun bash
</span></span></code></pre></div></div><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'homebrew'" :aria-hidden="codetab !== 'homebrew'"><div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">brew install platformsh/tap/upsun-cli
</span></span></code></pre></div></div><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'scoop'" :aria-hidden="codetab !== 'scoop'"><div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">scoop bucket add platformsh https://github.com/platformsh/homebrew-tap.git
</span></span><span class="line"><span class="cl">scoop install upsun
</span></span></code></pre></div></div></div>
</div>




<!-- shortcode start note -->
<div class="bg-skye-light p-4 mb-4 [&>p:last-child]:mb-0 [&>h3]:mt-0 rounded-lg" role="alert" ><h3 class="font-bold text-base">Note</h3><p>If you are using Scoop, you <strong>must</strong> have the <a href="https://github.com/ScoopInstaller/Extras" target="_blank" rel="noopener">Extras bucket</a> already installed before installing the Upsun CLI.</p>
</div>
<!-- shortcode end note -->

<h2 id="2-authenticate" class="scroll-mt-24"> 2. Authenticate <a data-engagement-id="content-section-anchor" class="headline-hash" href="#2-authenticate"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h2>
<p>To list and manage your projects, authenticate by running the following command:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun</span></span></code></pre></div>

</div>


<p>This process opens a browser tab for you to log in.
It also creates certificates on your computer for <a href="/development/ssh.html">SSH</a>.</p>
<p>Once you are logged in, a list of your projects appears, along with some tips for getting started.
If you experience authentication issues or want to force a login, run the command <code>upsun login</code>.</p>
<h2 id="3-use" class="scroll-mt-24"> 3. Use <a data-engagement-id="content-section-anchor" class="headline-hash" href="#3-use"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h2>
<p>Now you can run actions on your projects such as branching and merging.
You can also simulate a local build of your codebase as if you were pushing a change to Upsun,
including your services and data.</p>
<p>Get a list of all available commands with:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun list</span></span></code></pre></div>

</div>


<p>To get more information on a specific command, preface it with <code>help</code>:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun <span class="nb">help</span> get</span></span></code></pre></div>

</div>


<p>You get output similar to the following:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">Command: project:get
</span></span><span class="line"><span class="cl">Aliases: get
</span></span><span class="line"><span class="cl">Description: Clone a project locally
</span></span><span class="line"><span class="cl">
</span></span><span class="line"><span class="cl">Usage:
</span></span><span class="line"><span class="cl"> upsun get <span class="o">[</span>-e<span class="p">|</span>--environment ENVIRONMENT<span class="o">]</span> <span class="o">[</span>--depth DEPTH<span class="o">]</span> <span class="o">[</span>--build<span class="o">]</span> <span class="o">[</span>-p<span class="p">|</span>--project PROJECT<span class="o">]</span> <span class="o">[</span>--host HOST<span class="o">]</span> <span class="o">[</span>-i<span class="p">|</span>--identity-file IDENTITY-FILE<span class="o">]</span> <span class="o">[</span>--<span class="o">]</span> <span class="o">[</span>&lt;project&gt;<span class="o">]</span> <span class="o">[</span>&lt;directory&gt;<span class="o">]</span>
</span></span><span class="line"><span class="cl">
</span></span><span class="line"><span class="cl">Arguments:
</span></span><span class="line"><span class="cl">  project                            The project ID
</span></span><span class="line"><span class="cl">  directory                          The directory to clone to. Defaults to the project title
</span></span><span class="line"><span class="cl">
</span></span><span class="line"><span class="cl">Options:
</span></span><span class="line"><span class="cl">  -e, --environment<span class="o">=</span>ENVIRONMENT      The environment ID to clone. Defaults to the project default, or the first available
</span></span><span class="line"><span class="cl">                                     environment
</span></span><span class="line"><span class="cl">      --depth<span class="o">=</span>DEPTH                  Create a shallow clone: limit the number of commits in the <span class="nb">history</span>
</span></span><span class="line"><span class="cl">      --build                        Build the project after cloning
</span></span><span class="line"><span class="cl">  -p, --project<span class="o">=</span>PROJECT              The project ID or URL
</span></span><span class="line"><span class="cl">      --host<span class="o">=</span>HOST                    The project<span class="err">&#39;</span>s API hostname
</span></span><span class="line"><span class="cl">  -i, --identity-file<span class="o">=</span>IDENTITY-FILE  An SSH identity <span class="o">(</span>private key<span class="o">)</span> to use
</span></span><span class="line"><span class="cl">  -h, --help                         Display this <span class="nb">help</span> message
</span></span><span class="line"><span class="cl">  -q, --quiet                        Do not output any message
</span></span><span class="line"><span class="cl">  -V, --version                      Display this application version
</span></span><span class="line"><span class="cl">  -y, --yes                          Answer <span class="s2">&#34;yes&#34;</span> to any yes/no questions<span class="p">;</span> disable interaction
</span></span><span class="line"><span class="cl">  -n, --no                           Answer <span class="s2">&#34;no&#34;</span> to any yes/no questions<span class="p">;</span> disable interaction
</span></span><span class="line"><span class="cl">  -v<span class="p">|</span>vv<span class="p">|</span>vvv, --verbose               Increase the verbosity of messages
</span></span><span class="line"><span class="cl">
</span></span><span class="line"><span class="cl">Examples:
</span></span><span class="line"><span class="cl"> Clone the project <span class="s2">&#34;abc123&#34;</span> into the directory <span class="s2">&#34;my-project&#34;</span>:
</span></span><span class="line"><span class="cl">   upsun get abc123 my-project</span></span></code></pre></div>

</div>


<h3 id="select-the-right-project-and-environment" class="scroll-mt-24"> Select the right project and environment <a data-engagement-id="content-section-anchor" class="headline-hash" href="#select-the-right-project-and-environment"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h3>
<p>When you are in an empty directory or a directory not associated with a specific Upsun project,
if you run a command that requires a specific project and environment, you are prompted to select them.</p>
<p>For example, if you run the following command:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun environment:info</span></span></code></pre></div>

</div>


<p>You get the following output:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">Enter a number to choose a project:
</span></span><span class="line"><span class="cl">  <span class="o">[</span>0<span class="o">]</span> My project <span class="o">(</span>xb3pfo734qxbeg<span class="o">)</span>
</span></span><span class="line"><span class="cl">  <span class="o">[</span>1<span class="o">]</span> A great project <span class="o">(</span>3p5fmol45kxp6<span class="o">)</span>
</span></span><span class="line"><span class="cl">  <span class="o">[</span>2<span class="o">]</span> An even better project <span class="o">(</span>rjify4y564xaa<span class="o">)</span>
</span></span><span class="line"><span class="cl">&gt;</span></span></code></pre></div>

</div>


<p>If your working directory is inside a local checkout of your project repository,
your project and environment are detected automatically.</p>
<p>You can always specify the project and environment in two ways:</p>
<ul>
<li>
<p>As arguments for the command:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun environment:info --project<span class="o">=</span>my-project --environment<span class="o">=</span>staging</span></span></code></pre></div>

</div>


</li>
<li>
<p>With environment variables:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl"><span class="nb">export</span> <span class="nv">PLATFORM_PROJECT</span><span class="o">=</span>my-project<span class="p">;</span>
</span></span><span class="line"><span class="cl"><span class="nb">export</span> <span class="nv">PLATFORM_BRANCH</span><span class="o">=</span>staging<span class="p">;</span>
</span></span><span class="line"><span class="cl">upsun environment:info</span></span></code></pre></div>

</div>


</li>
</ul>
<p>In <a href="/create-apps/multi-app.html">multi-app</a> projects, this applies also to selecting the right app
(the environment variable would be <code>PLATFORM_APPLICATION_NAME</code>).</p>
<h4 id="rootnotfoundexception" class="scroll-mt-24"> RootNotFoundException <a data-engagement-id="content-section-anchor" class="headline-hash" href="#rootnotfoundexception"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h4>
<p>If you check out a project via Git directly and not using the <code>upsun get</code> command,
the CLI may be unable to determine what project it&rsquo;s in.
You might run a CLI command from within a project directory you&rsquo;ve checked out and get an error like this:</p>












<div class="relative no-copy" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-text" data-lang="text"><span class="line"><span class="cl">[RootNotFoundException] Project root not found. This can only be run from inside a project directory.</span></span></code></pre></div>

</div>


<p>Then the CLI hasn&rsquo;t been able to determine the project to use.
To fix this, run:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun project:set-remote --project <var spellcheck="false" title="Replace 'PROJECT_ID' with your own data">PROJECT_ID</var></span></span></code></pre></div>

</div>


<p>Replace <code><var spellcheck="false" title="Replace 'PROJECT_ID' with your own data">PROJECT_ID</var></code> with the ID of your project.
You can find that in the Console or by running <code>upsun projects</code> to list all accessible projects.</p>
<h3 id="choose-between-the-cli-and-git-commands" class="scroll-mt-24"> Choose between the CLI and Git commands <a data-engagement-id="content-section-anchor" class="headline-hash" href="#choose-between-the-cli-and-git-commands"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h3>
<p>Some CLI commands (especially many within the <code>environment</code> namespace) have some overlap with Git commands.
Generally, they offer more options than the Git commands alone.
For example, <code>upsun push</code> offers options such as <code>--activate</code> (to activate an environment before pushing)
and <code>--no-wait</code> (so you can continue working without waiting for the push to complete).</p>
<p>For all of them, you don&rsquo;t need to configure a Git remote.
It&rsquo;s enough to have a project ID.</p>
<p>An example of how this affects commands is that when you run <code>upsun merge</code>,
it doesn&rsquo;t affect your local codebase.
You don&rsquo;t even need the code locally.
The code is only merged between environments remotely.</p>
<h3 id="customize-the-cli" class="scroll-mt-24"> Customize the CLI <a data-engagement-id="content-section-anchor" class="headline-hash" href="#customize-the-cli"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h3>
<p>You can customize how the CLI operates and what it returns with a configuration file (<code>~/.upsun-cli/config.yaml</code>) or environment variables. For details, see the <a href="https://github.com/platformsh/legacy-cli#user-content-customization" target="_blank" rel="noopener">customization instructions on GitHub</a>.</p>
<h4 id="automate-repetitive-tasks" class="scroll-mt-24"> Automate repetitive tasks <a data-engagement-id="content-section-anchor" class="headline-hash" href="#automate-repetitive-tasks"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h4>
<p>You might want to use the CLI in a script to automate repetitive tasks such as synchronizing your files locally.
In such cases, you want to customize the CLI to bypass any confirmation questions.
You can set the answer to every question as <code>yes</code> using the <code>UPSUN_CLI_NO_INTERACTION</code> environment variable.</p>
<p>For instance, to locally sync every mount point for your app named <code>myapp</code>, you could use this command:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl"><span class="nb">export</span> <span class="nv">PLATFORM_PROJECT</span><span class="o">=</span>my-project<span class="p">;</span>
</span></span><span class="line"><span class="cl"><span class="nb">export</span> <span class="nv">PLATFORM_BRANCH</span><span class="o">=</span>main<span class="p">;</span>
</span></span><span class="line"><span class="cl"><span class="nb">export</span> <span class="nv">UPSUN_CLI_NO_INTERACTION</span><span class="o">=</span>1<span class="p">;</span>
</span></span><span class="line"><span class="cl">upsun mount:download --all --app app --target local-backup</span></span></code></pre></div>

</div>


<h3 id="autocomplete-commands" class="scroll-mt-24"> Autocomplete commands <a data-engagement-id="content-section-anchor" class="headline-hash" href="#autocomplete-commands"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h3>
<p>The CLI provides tab autocompletion for commands, options, and some values (your projects, valid regions).
To enable autocompletion, follow this step:</p>

<div class="mb-4"
x-data="{
    codetab: 'default',
    switchCodetab(targetCodetab) {
      this.codetab = targetCodetab;
    }
  }"
>

  
    <ul class="flex list-none border-b border-stone !m-0 !pl-0" role="tablist" data-engagement-id="codetabs-section"><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'default' }" role="tab" :aria-selected="codetab === 'default'" @click="switchCodetab('default')">Using Homebrew</a>
          </li><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'manually' }" role="tab" :aria-selected="codetab === 'manually'" @click="switchCodetab('manually')">Manually</a>
          </li></ul>

    
    <div class="border border-stone px-5 pt-6 pb-4" style="border-color: rgb(231 231 231 / var(--tw-border-opacity)) !important;"><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'default'" :aria-hidden="codetab !== 'default'">Follow the <a href="https://docs.brew.sh/Shell-Completion" target="_blank" rel="noopener">Homebrew documentation on shell completion</a>.</div><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'manually'" :aria-hidden="codetab !== 'manually'"><p>Add the following to your shell&rsquo;s startup (<code>.bashrc</code>, <code>.zshrc</code>, or the equivalent):</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl"><span class="nb">eval</span> <span class="k">$(</span>upsun completion<span class="k">)</span></span></span></code></pre></div>

</div></div></div>
</div>

<h3 id="run-commands-on-your-container" class="scroll-mt-24"> Run commands on your container <a data-engagement-id="content-section-anchor" class="headline-hash" href="#run-commands-on-your-container"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h3>
<p>You can use the Upsun CLI to run commands on your container.
You can use any command you&rsquo;ve added in <a href="/create-apps/app-reference/single-runtime-image.html#dependencies">dependencies</a>
or a <a href="/create-apps/image-properties/hooks.html">hook</a>.</p>
<p>The syntax looks like the following:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun ssh -- <var spellcheck="false" title="Replace 'COMMAND' with your own data">COMMAND</var> <var spellcheck="false" title="Replace 'ARGUMENTS' with your own data">ARGUMENTS</var></span></span></code></pre></div>

</div>


<p>For example, to run a specific Python script named <code>my-script.py</code> on your current environment,
run the following command:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun ssh -- python my-script.py</span></span></code></pre></div>

</div>


<p>Or to use <a href="https://www.drush.org/latest/install/" target="_blank" rel="noopener">Drush</a> to rebuild the cache on the <code>feature</code> environment,
run this command:</p>












<div class="relative" data-engagement-id="content-codeblock">











<div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">upsun ssh -e feature -- drush -y cache-rebuild</span></span></code></pre></div>

</div>


<h3 id="update-the-cli" class="scroll-mt-24"> Update the CLI <a data-engagement-id="content-section-anchor" class="headline-hash" href="#update-the-cli"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h3>
<p>To update to the latest version, use the same tool as for <a href="#1-install">installation</a>:</p>

<div class="mb-4"
x-data="{
    codetab: 'default',
    switchCodetab(targetCodetab) {
      this.codetab = targetCodetab;
    }
  }"
>

  
    <ul class="flex list-none border-b border-stone !m-0 !pl-0" role="tablist" data-engagement-id="codetabs-section"><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'default' }" role="tab" :aria-selected="codetab === 'default'" @click="switchCodetab('default')">Homebrew</a>
          </li><li class="tab-item text-sm xl:text-base border-b !mb-0" data-engagement-id="codetab-tab-toggle">
            <a class="mx-2 py-1 px-2 text-base xl:text-lg border-ebony text-slate font-semibold hover:text-ebony hover:border-b hover:font-bold hover:no-underline" :class="{ '!text-ebony font-bold border-b': codetab === 'scoop' }" role="tab" :aria-selected="codetab === 'scoop'" @click="switchCodetab('scoop')">Scoop</a>
          </li></ul>

    
    <div class="border border-stone px-5 pt-6 pb-4" style="border-color: rgb(231 231 231 / var(--tw-border-opacity)) !important;"><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'default'" :aria-hidden="codetab !== 'default'"><div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">brew upgrade upsun-cli
</span></span></code></pre></div></div><div class="[&&gt;:first-child]:mt-0 [&&gt;:last-child]:mb-0" role="tabpanel" x-show="codetab === 'scoop'" :aria-hidden="codetab !== 'scoop'"><div class="highlight"><pre tabindex="0" class="chroma"><code class="language-bash" data-lang="bash"><span class="line"><span class="cl">$ scoop update upsun
</span></span></code></pre></div></div></div>
</div>

<h2 id="upgrade-from-the-legacy-cli" class="scroll-mt-24"> Upgrade from the legacy CLI <a data-engagement-id="content-section-anchor" class="headline-hash" href="#upgrade-from-the-legacy-cli"><img alt="Anchor to this heading" src="/images/svg/link.svg" /></a> </h2>
<p>To upgrade from the legacy CLI, follow the <a href="#1-install">installation instructions</a>.
Once you&rsquo;ve installed the latest version, the CLI guides you through removing the installed legacy CLI.</p>



    
    

    

  </div>

</div>


  </div>


      </main>

    </div>

    
    <script src="/scripts/xss/dist/bundle.js?version=1.0.19"></script>

    
    <script>
       
      var getCookie = function(name) {
        var match = document.cookie.match('(?:^|; )' + name + '=([^;]*)');
        return match ? match[1] : null;
      };

      var raw = getCookie('pendo_shared_session');
      var visitorId = null;

      if(raw){
        try {
          var data = JSON.parse(decodeURIComponent(raw));
          if (data && data.visitor) {
            visitorId = data.visitor.id;
          }
        } catch (e) {
          
        }
      }

      if(visitorId) {
        (function(apiKey){
          (function(p,e,n,d,o){var v,w,x,y,z;o=p[d]=p[d]||{};o._q=o._q||[];
            v=['initialize','identify','updateOptions','pageLoad','track'];for(w=0,x=v.length;w<x;++w)(function(m){
              o[m]=o[m]||function(){o._q[m===v[0]?'unshift':'push']([m].concat([].slice.call(arguments,0)));};})(v[w]);
            y=e.createElement(n);y.async=!0;y.src='https://content.engage.upsun.com/agent/static/'+apiKey+'/pendo.js';
            z=e.getElementsByTagName(n)[0];z.parentNode.insertBefore(y,z);})(window,document,'script','pendo');
          pendo.initialize({
            visitor: {
              id: visitorId
            }
          });
        })('a66fdc48-beb9-4214-6029-1e086eab3548');
      }
    </script>
    

    
    
    <script src="/js/copy-anchor-link.min.2435c625b1f99e11e37e5ee5c551b9d6e397c2c5779bd3c23c60e6f94ae7ffc3.js"></script>

    
    
    <script src="/js/copy-code.min.7190de43b2a73581f808989a37542a305ca3e938eb14f737acc0797ddcc5f299.js"></script>

    
    <script src="https://cdn.jsdelivr.net/npm/medium-zoom@1.1.0/dist/medium-zoom.min.js"></script>
    
    <script src="/js/zoom.min.c30878b67cea752c80b82cc5abbd55d453e6a2e10af856cfb3ae2b2cc83a5cd5.js"></script>


  </body>
</html>
