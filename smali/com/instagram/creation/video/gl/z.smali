.class public abstract Lcom/instagram/creation/video/gl/z;
.super Ljava/lang/Object;
.source "RenderController.java"


# instance fields
.field private a:Lcom/instagram/creation/video/gl/j;


# direct methods
.method public constructor <init>(Lcom/instagram/creation/video/gl/j;)V
    .locals 0
    .parameter

    .prologue
    .line 8
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 9
    iput-object p1, p0, Lcom/instagram/creation/video/gl/z;->a:Lcom/instagram/creation/video/gl/j;

    .line 10
    invoke-virtual {p1, p0}, Lcom/instagram/creation/video/gl/j;->a(Lcom/instagram/creation/video/gl/z;)V

    .line 11
    return-void
.end method


# virtual methods
.method public H_()V
    .locals 0

    .prologue
    .line 25
    return-void
.end method

.method public I_()V
    .locals 0

    .prologue
    .line 52
    return-void
.end method

.method public d()V
    .locals 0

    .prologue
    .line 54
    return-void
.end method

.method public e()V
    .locals 0

    .prologue
    .line 42
    return-void
.end method

.method public f()V
    .locals 0

    .prologue
    .line 50
    return-void
.end method

.method public g()Z
    .locals 1

    .prologue
    .line 33
    const/4 v0, 0x0

    return v0
.end method

.method public final l()Lcom/instagram/creation/video/gl/j;
    .locals 1

    .prologue
    .line 14
    iget-object v0, p0, Lcom/instagram/creation/video/gl/z;->a:Lcom/instagram/creation/video/gl/j;

    return-object v0
.end method

.method public final m()V
    .locals 1

    .prologue
    .line 57
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/z;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->f()V

    .line 58
    return-void
.end method

.method public final n()V
    .locals 1

    .prologue
    .line 61
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/z;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->a()V

    .line 62
    return-void
.end method

.method public final o()V
    .locals 1

    .prologue
    .line 65
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/z;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->b()V

    .line 66
    return-void
.end method

.method public final p()V
    .locals 1

    .prologue
    .line 69
    invoke-virtual {p0}, Lcom/instagram/creation/video/gl/z;->l()Lcom/instagram/creation/video/gl/j;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/creation/video/gl/j;->e()V

    .line 70
    return-void
.end method
