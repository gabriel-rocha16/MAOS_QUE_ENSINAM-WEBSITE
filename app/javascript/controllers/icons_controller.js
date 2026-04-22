import { Controller } from "@hotwired/stimulus";
// Adicionamos Heart, UserPlus e ArrowDown na importação
import {
  createIcons,
  Home,
  GraduationCap,
  BookOpen,
  Phone,
  Heart,
  UserPlus,
  ArrowDown,
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
      },
    });
  }
}
