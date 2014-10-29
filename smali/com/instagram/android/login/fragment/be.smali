.class final Lcom/instagram/android/login/fragment/be;
.super Ljava/lang/Object;
.source "RegisterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/android/login/fragment/an;


# direct methods
.method constructor <init>(Lcom/instagram/android/login/fragment/an;)V
    .locals 0
    .parameter

    .prologue
    .line 963
    iput-object p1, p0, Lcom/instagram/android/login/fragment/be;->a:Lcom/instagram/android/login/fragment/an;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 966
    sget-object v0, Lcom/instagram/p/b;->D:Lcom/instagram/p/b;

    invoke-virtual {v0}, Lcom/instagram/p/b;->c()V

    .line 967
    iget-object v0, p0, Lcom/instagram/android/login/fragment/be;->a:Lcom/instagram/android/login/fragment/an;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lcom/instagram/android/login/fragment/an;->a(Lcom/instagram/android/login/fragment/an;Z)Z

    .line 968
    iget-object v0, p0, Lcom/instagram/android/login/fragment/be;->a:Lcom/instagram/android/login/fragment/an;

    invoke-virtual {v0}, Lcom/instagram/android/login/fragment/an;->d()V

    .line 969
    return-void
.end method
