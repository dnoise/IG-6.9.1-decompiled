.class public final Lcom/instagram/cliffjumper/edit/photo/render/h;
.super Ljava/lang/Object;
.source "RenderConfig.java"


# instance fields
.field public final a:I

.field public final b:Ljava/lang/String;

.field public final c:Z

.field public final d:Z


# direct methods
.method public constructor <init>(Ljava/lang/String;IZ)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 24
    iput p2, p0, Lcom/instagram/cliffjumper/edit/photo/render/h;->a:I

    .line 25
    iput-object p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/h;->b:Ljava/lang/String;

    .line 26
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/h;->c:Z

    .line 27
    iput-boolean p3, p0, Lcom/instagram/cliffjumper/edit/photo/render/h;->d:Z

    .line 28
    return-void
.end method
