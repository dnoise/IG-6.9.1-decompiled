.class final Lcom/instagram/cliffjumper/edit/photo/a/v;
.super Ljava/lang/Object;
.source "PhotoFilterFragment.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/a/a;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/a/a;)V
    .locals 0
    .parameter

    .prologue
    .line 526
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final onClick(Landroid/view/View;)V
    .locals 2
    .parameter

    .prologue
    .line 529
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    sget v1, Lcom/instagram/cliffjumper/edit/photo/a/w;->b:I

    invoke-static {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/a/a;->a(Lcom/instagram/cliffjumper/edit/photo/a/a;I)I

    .line 530
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/a/v;->a:Lcom/instagram/cliffjumper/edit/photo/a/a;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/a/a;->e(Lcom/instagram/cliffjumper/edit/photo/a/a;)V

    .line 531
    return-void
.end method
