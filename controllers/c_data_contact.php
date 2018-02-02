<?php
    include("models/m_contact.php");
    $m_contact = new M_contact();
    $contact = $m_contact->contact();
    $logo = $contact->logo;
    $favicon = $contact->favicon;
    $title_website = $contact->title_website;
    $description_website = $contact->description_website;
    $keywords_website = $contact->keywords_website;
    $phone_number = $contact->phone_number;
    $email = $contact->email;
    $address = $contact->address;
    $google_map = $contact->google_map;
    $image_seo = "http://$_SERVER[HTTP_HOST]/public/images/logo/".$logo;
    $url_seo = "http://$_SERVER[HTTP_HOST]$_SERVER[REQUEST_URI]";
?>