import { RouterConfiguration, Router } from "aurelia-router"
import { PLATFORM } from "aurelia-framework"
import { AuthStep } from "features/authentication/data/auth-step"

export const MyRoute = {
  home: 'home',
  auth: 'auth',
  reports: 'reports',
  messages: 'messages',
  nonAdmin: 'nonAdmin'
}

export function configureRouter(config: RouterConfiguration, router: Router) {
  config.options.pushState = true
  config.options.root = '/'

  config.addAuthorizeStep(AuthStep)

  config.map([
    {
      route: ['', 'home'],
      name: MyRoute.home,
      moduleId: PLATFORM.moduleName("./features/authentication/presentation/home/home-screen"),
      nav: false,
      title: 'Home'
    },
    {
      route: 'auth', 
      name: MyRoute.auth,
      moduleId: PLATFORM.moduleName("./features/authentication/presentation/auth/auth-screen"),
      nav: false,
      title: 'Authentication'
    },
    {
      route: 'non-admin',
      name: MyRoute.nonAdmin,
      moduleId: PLATFORM.moduleName("./features/authentication/presentation/non-admin/non-admin-screen"),
      nav: false,
      title: 'Not an admin'
    },
    {
      route: 'messages',
      name: MyRoute.messages,
      moduleId: PLATFORM.moduleName("./features/messages/presentation/messages/messages-screen"),
      nav: true,
      title: 'Messages',
    },
    {
      route: 'reports',
      name: MyRoute.reports,
      moduleId: PLATFORM.moduleName("./features/reports/presentation/reports/reports-screen"),
      nav: true,
      title: 'Reports'
    }
  ])
}