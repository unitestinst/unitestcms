import { createRouter, createWebHistory } from 'vue-router';
import Login from '@/components/LoginPage.vue';
import AccountPage from '@/components/AccountPage.vue';
import EditOrder from '@/components/EditOrderForm.vue'; // Assuming this is the EditOrder component
import EmailManagement from '@/components/EmailManagement.vue';
import ViewEmailPage from '@/components/ViewEmailPage.vue';

const routes = [
  {
    path: '/',
    redirect: '/login'
  },
  {
    path: '/login',
    name: 'Login',
    component: Login
  },
  {
    path: '/account',
    name: 'Account',
    component: AccountPage,
    meta: { requiresAuth: true }  // Protect this route with a meta field
  },
  {
    path: '/edit-order/:jobNumber',
    name: 'EditOrder',
    component: EditOrder,
    props: (route) => ({ jobNumber: route.params.jobNumber })
  },
  {
    path: '/email-management',
    name: 'EmailManagement',
    component: EmailManagement
  },
  {
    path: '/view-email/:emailId',
    name: 'ViewEmailPage',
    component: ViewEmailPage,
    props: true
  }
  // other routes
];

const router = createRouter({
  history: createWebHistory(),
  routes,
});

// Add navigation guard to protect the /account and /edit-order routes
router.beforeEach((to, from, next) => {
  if (to.matched.some(record => record.meta.requiresAuth)) {
    const token = localStorage.getItem('token');
    if (!token) {
      next({
        path: '/login',
        query: { redirect: to.fullPath }
      });
    } else {
      next();
    }
  } else {
    next();
  }
});

// Prevent logged-in users from accessing the login page
router.beforeEach((to, from, next) => {
  const token = localStorage.getItem('token');
  if (to.path === '/login' && token) {
    next('/account');
  } else {
    next();
  }
});

export default router;
