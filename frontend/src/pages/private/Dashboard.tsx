import { MainLayout } from '@/layouts/MainLayout';
import { useAuth } from '@/contexts/AuthContext';

export function Dashboard() {
  const { user } = useAuth();

  return (
    <MainLayout>
      <div className="space-y-6">
        <div>
          <h2 className="text-2xl font-bold">Bem-vindo, {user?.name}!</h2>
          <p className="text-muted-foreground">
            Este é seu painel de controle.
          </p>
        </div>
        <div className="grid gap-4 md:grid-cols-2 lg:grid-cols-3">
          {/* Adicione seus cards e widgets aqui */}
        </div>
      </div>
    </MainLayout>
  );
} 