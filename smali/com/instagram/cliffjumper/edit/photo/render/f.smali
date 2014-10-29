.class final Lcom/instagram/cliffjumper/edit/photo/render/f;
.super Ljava/lang/Object;
.source "ImageRenderer.java"


# instance fields
.field private final a:I

.field private final b:Ljava/lang/String;


# direct methods
.method private constructor <init>(ILjava/lang/String;)V
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 207
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 208
    iput p1, p0, Lcom/instagram/cliffjumper/edit/photo/render/f;->a:I

    .line 209
    iput-object p2, p0, Lcom/instagram/cliffjumper/edit/photo/render/f;->b:Ljava/lang/String;

    .line 210
    return-void
.end method

.method synthetic constructor <init>(ILjava/lang/String;B)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 203
    invoke-direct {p0, p1, p2}, Lcom/instagram/cliffjumper/edit/photo/render/f;-><init>(ILjava/lang/String;)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/cliffjumper/edit/photo/render/f;)I
    .locals 1
    .parameter

    .prologue
    .line 203
    iget v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/f;->a:I

    return v0
.end method

.method static synthetic b(Lcom/instagram/cliffjumper/edit/photo/render/f;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 203
    iget-object v0, p0, Lcom/instagram/cliffjumper/edit/photo/render/f;->b:Ljava/lang/String;

    return-object v0
.end method
