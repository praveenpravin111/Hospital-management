<%@ Page Language="C#" MasterPageFile="~/home.master" AutoEventWireup="true" CodeFile="about.aspx.cs" Inherits="Default2" Title="Untitled Page" %>

<asp:Content ID="Content1" ContentPlaceHolderID="ContentPlaceHolder1" Runat="Server">
    Personal health record (PHR) is an emerging patient-centric model of health 
    information exchange, which is often outsourced to be stored at a third party, 
    such as cloud providers. However, there have been wide privacy concerns as 
    personal health information could be exposed to those third party servers and to 
    unauthorized parties. To assure the patients’ control over access to their own 
    PHRs, it is a promising method to encrypt the PHRs before outsourcing. Yet, 
    issues such as risks of privacy exposure, scalability in key management, 
    flexible access, and efficient user revocation, have remained the most important 
    challenges toward achieving fine-grained, cryptographically enforced data access 
    control. In this paper, we propose a novel patient-centric framework and a suite 
    of mechanisms for data access control to PHRs stored in semitrusted servers. To 
    achieve fine-grained and scalable data access control for PHRs, we leverage 
    attribute-based encryption (ABE) techniques to encrypt each patient’s PHR file. 
    Different from previous works in secure data outsourcing, we focus on the 
    multiple data owner scenario, and divide the users in the PHR system into 
    multiple security domains that greatly reduces the key management complexity for 
    owners and users. A high degree of patient privacy is guaranteed simultaneously 
    by exploiting&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp; 
    multiauthority ABE. Our scheme also enables dynamic modification of access 
    policies or file attributes, supports efficient on-demand user/attribute 
    revocation and break-glass access under emergency scenarios. Extensive 
    analytical and experimental results are presented which show the security, 
    scalability, and efficiency of our proposed scheme. 
</asp:Content>

