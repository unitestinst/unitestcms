<template>
    <div>
      <section class="email-management">
        <table>
          <thead>
            <tr>
              <th>Email ID</th>
              <th>Sender</th>
              <th>Recipient</th>
              <th>Subject</th>
              <th>Date & Time</th>
              <th>Action</th>
            </tr>
          </thead>
          <tbody>
            <tr v-for="email in paginatedEmails" :key="email.email_id">
              <td>{{ email.email_id }}</td>
              <td>{{ email.sender }}</td>
              <td>{{ email.recipient }}</td>
              <td>{{ email.subject }}</td>
              <td>{{ email.dateTime }}</td>
              <td>
                <button @click="viewEmail(email)">View</button>
                <button @click="deleteEmail(email.email_id)">Delete</button>
              </td>
            </tr>
          </tbody>
        </table>
      </section>
    </div>
  </template>
  
  <script>
  import axios from 'axios';
  
  export default {
    name: 'EmailManagement',
    data() {
      return {
        emails: [],
        currentPage: 1,
        itemsPerPage: 10,
        // other data properties
      };
    },
    computed: {
      paginatedEmails() {
        const start = (this.currentPage - 1) * this.itemsPerPage;
        const end = start + this.itemsPerPage;
        return this.emails.slice(start, end);
      },
    },
    methods: {
      async fetchEmails() {
        try {
          const response = await axios.get('http://localhost:3000/api/emails');
          this.emails = response.data;
        } catch (error) {
          console.error('Error fetching emails:', error);
        }
      },
      viewEmail(email) {
        this.$router.push({ name: 'ViewEmailPage', params: { emailId: email.email_id } });
      },
      async deleteEmail(emailId) {
        try {
          await axios.delete(`http://localhost:3000/api/emails/${emailId}`);
          this.fetchEmails();
        } catch (error) {
          console.error('Error deleting email:', error);
        }
      }
    },
    created() {
      this.fetchEmails();
    }
  };
  </script>
  
  <style scoped>
.email-management {
    width: 100%;
    margin: 0 auto;
    padding: 20px;
    background-color: #f9f9f9;
    border-radius: 8px;
    box-shadow: 0 2px 4px rgba(0, 0, 0, 0.1);
}

.email-management table {
    width: 100%;
    border-collapse: collapse;
    margin-top: 20px;
}

.email-management th, .email-management td {
    padding: 12px 15px;
    text-align: left;
    border-bottom: 1px solid #ddd;
}

.email-management th {
    background-color: #f2f2f2;
    font-weight: bold;
}

.email-management tr:hover {
    background-color: #f1f1f1;
}

.email-management button {
    padding: 8px 12px;
    margin-right: 5px;
    border: none;
    border-radius: 4px;
    cursor: pointer;
}

.email-management button:hover {
    background-color: #ddd;
}

.email-management button:focus {
    outline: none;
}
  </style>