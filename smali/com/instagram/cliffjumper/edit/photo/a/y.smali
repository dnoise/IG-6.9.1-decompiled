.class final Lcom/instagram/cliffjumper/edit/photo/a/y;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/x;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/x;)V
    .locals 0
    .parameter

    .prologue
    .line 991
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/x;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 994
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/y;->a:Lcom/instagram/cliffjumper/edit/photo/a/x;

    iget-object v0, v0, Lcom/instagram/cliffjumper/edit/photo/a/x;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-virtual {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->l()Landroid/support/v4/app/k;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v4/app/k;->finish()V

    .line 995
    return-void
.end method
