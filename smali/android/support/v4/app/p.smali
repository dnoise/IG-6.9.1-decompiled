.class public final Landroid/support/v4/app/p;
.super Landroid/support/v4/app/r;
.source "FragmentActivityHost.java"


# instance fields
.field private final a:Landroid/support/v4/app/k;


# direct methods
.method public constructor <init>(Landroid/support/v4/app/k;)V
    .locals 0
    .parameter

    .prologue
    .line 25
    invoke-direct {p0}, Landroid/support/v4/app/r;-><init>()V

    .line 26
    iput-object p1, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    .line 27
    return-void
.end method


# virtual methods
.method public final a()Landroid/content/Context;
    .locals 1

    .prologue
    .line 31
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    return-object v0
.end method

.method final a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 101
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/k;->a(Ljava/lang/String;ZZ)Landroid/support/v4/app/ap;

    move-result-object v0

    return-object v0
.end method

.method public final a(I)Landroid/view/View;
    .locals 1
    .parameter

    .prologue
    .line 56
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->findViewById(I)Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method final a(Landroid/support/v4/app/Fragment;)V
    .locals 1
    .parameter

    .prologue
    .line 76
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;)V

    .line 77
    return-void
.end method

.method final a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 121
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/Fragment;Landroid/content/Intent;I)V

    .line 122
    return-void
.end method

.method final a(Landroid/support/v4/app/s;)V
    .locals 1
    .parameter

    .prologue
    .line 91
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Landroid/support/v4/app/s;)V

    .line 92
    return-void
.end method

.method final a(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 116
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1, p2, p3}, Landroid/support/v4/app/k;->onCreateContextMenu(Landroid/view/ContextMenu;Landroid/view/View;Landroid/view/ContextMenu$ContextMenuInfo;)V

    .line 117
    return-void
.end method

.method final a(Ljava/lang/String;)V
    .locals 1
    .parameter

    .prologue
    .line 96
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0, p1}, Landroid/support/v4/app/k;->a(Ljava/lang/String;)V

    .line 97
    return-void
.end method

.method final a(Ljava/lang/String;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter
    .parameter
    .parameter

    .prologue
    .line 126
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    const/4 v1, 0x0

    invoke-virtual {v0, p1, v1, p2, p3}, Landroid/support/v4/app/k;->dump(Ljava/lang/String;Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 127
    return-void
.end method

.method public final b()Landroid/os/Handler;
    .locals 1

    .prologue
    .line 36
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->a:Landroid/os/Handler;

    return-object v0
.end method

.method public final c()Landroid/view/Window;
    .locals 1

    .prologue
    .line 41
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getWindow()Landroid/view/Window;

    move-result-object v0

    return-object v0
.end method

.method public final d()Landroid/content/res/Resources;
    .locals 1

    .prologue
    .line 46
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    return-object v0
.end method

.method public final e()Landroid/view/LayoutInflater;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v0

    return-object v0
.end method

.method public final f()Z
    .locals 1

    .prologue
    .line 61
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->isFinishing()Z

    move-result v0

    return v0
.end method

.method final g()Landroid/support/v4/app/u;
    .locals 1

    .prologue
    .line 71
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    iget-object v0, v0, Landroid/support/v4/app/k;->b:Landroid/support/v4/app/u;

    return-object v0
.end method

.method final h()Z
    .locals 1

    .prologue
    .line 81
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    iget-boolean v0, v0, Landroid/support/v4/app/k;->i:Z

    return v0
.end method

.method final i()Landroid/support/v4/app/s;
    .locals 1

    .prologue
    .line 86
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->b_()Landroid/support/v4/app/s;

    move-result-object v0

    return-object v0
.end method

.method final j()V
    .locals 1

    .prologue
    .line 111
    iget-object v0, p0, Landroid/support/v4/app/p;->a:Landroid/support/v4/app/k;

    invoke-virtual {v0}, Landroid/support/v4/app/k;->c()V

    .line 112
    return-void
.end method
