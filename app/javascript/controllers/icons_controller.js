import { Controller } from "@hotwired/stimulus";
// Adicionamos ArrowRight, Clock, PlayCircle e Users
import {
  createIcons,
  Home,
  GraduationCap,
  BookOpen,
  Phone,
  Heart,
  UserPlus,
  ArrowDown,
  Calendar,
  Star,
  ArrowRight,
  Clock,
  PlayCircle,
  Users,
  User,
} from "lucide";

export default class extends Controller {
  connect() {
    createIcons({
      icons: {
        Home,
        GraduationCap,
        BookOpen,
        Phone,
        Heart,
        UserPlus,
        ArrowDown,
        Calendar,
        Star,
        ArrowRight, // Novo
        Clock, // Novo
        PlayCircle, // Novo
        Users, // Novo
        User, // Novo
      },
    });
  }
}
