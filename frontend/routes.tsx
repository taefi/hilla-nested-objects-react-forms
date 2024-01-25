import CountryView from 'Frontend/views/base-data/CountryView.js';
import MainLayout from 'Frontend/views/MainLayout.js';
import { lazy } from 'react';
import { createBrowserRouter, RouteObject } from 'react-router-dom';
import CityView from "Frontend/views/base-data/CityView";
import EmployeeCustomCrud from "Frontend/views/employee/EmployeeCustomCrud";

const AboutView = lazy(async () => import('Frontend/views/about/AboutView.js'));

export const routes = [
  {
    element: <MainLayout />,
    handle: { title: 'Main' },
    children: [
      { path: '/', element: <EmployeeCustomCrud />, handle: { title: 'Employees' } },
      { path: '/country', element: <CountryView />, handle: { title: 'Countries' } },
      { path: '/city', element: <CityView />, handle: { title: 'Cities' } },
      { path: '/about', element: <AboutView />, handle: { title: 'About' } },
    ],
  },
] as RouteObject[];

export default createBrowserRouter(routes);
