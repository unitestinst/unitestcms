<template>
    <div>
      <h1>View Email {{ emailId }}</h1>
      <div v-if="emailData">
        <p><strong>Sender:</strong> {{ emailData.sender }}</p>
        <p><strong>Recipient:</strong> {{ emailData.recipient }}</p>
        <p><strong>Subject:</strong> {{ emailData.subject }}</p>
        <p><strong>Date & Time:</strong> {{ emailData.dateTime }}</p>
        <p><strong>Body:</strong> {{ emailData.body }}</p>
      </div>
      <button @click="goBack">Back</button>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name: 'ViewEmailPage',
    props: {
      emailId: {
        type: String,
        required: true
      }
    },
    data() {
      return {
        emailData: null
      };
    },
    methods: {
      async fetchEmailData() {
        try {
          const response = await axios.get(`http://localhost:3000/api/emails/${this.emailId}`);
          this.emailData = response.data;
        } catch (error) {
          console.error('Error fetching email data:', error);
        }
      },
      goBack() {
        this.$router.push('/email-management');
      }
    },
    created() {
      this.fetchEmailData();
    }
  };
  </script>
  
  <style scoped>
/* Add your styles here */
h1 {
    font-size: 24px;
    margin-bottom: 20px;
}

div {
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

p {
    margin: 10px 0;
}

button {
    margin-top: 20px;
    padding: 10px 20px;
    background-color: #007bff;
    color: white;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

button:hover {
    background-color: #0056b3;
}
  </style>