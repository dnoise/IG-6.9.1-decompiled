.class final Lcom/instagram/cliffjumper/edit/photo/render/d;
.super Ljava/lang/Object;
.source "ImageRenderer.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic a:Lcom/instagram/cliffjumper/edit/photo/render/a;

.field final synthetic b:Lcom/instagram/cliffjumper/edit/photo/render/c;


# direct methods
.method constructor <init>(Lcom/instagram/cliffjumper/edit/photo/render/c;Lcom/instagram/cliffjumper/edit/photo/render/a;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 65
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/d;->b:Lcom/instagram/cliffjumper/edit/photo/render/c;

    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/render/d;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    .prologue
    .line 68
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/d;->b:Lcom/instagram/cliffjumper/edit/photo/render/c;

    invoke-static {v0}, Lcom/instagram/cliffjumper/edit/photo/render/c;->a(Lcom/instagram/cliffjumper/edit/photo/render/c;)Lcom/instagram/cliffjumper/edit/photo/render/g;

    move-result-object v0

    iget-object v1, p0, Lcom/instagram/cliffjumper/edit/photo/render/d;->a:Lcom/instagram/cliffjumper/edit/photo/render/a;

    invoke-interface {v0, v1}, Lcom/instagram/cliffjumper/edit/photo/render/g;->a(Lcom/instagram/cliffjumper/edit/photo/render/a;)V

    .line 69
    return-void
.end method
