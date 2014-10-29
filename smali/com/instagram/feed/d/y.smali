.class final Lcom/instagram/feed/d/y;
.super Ljava/lang/Object;
.source "MediaRenderCache.java"


# instance fields
.field private final a:F

.field private final b:Z

.field private final c:Landroid/text/TextPaint;

.field private final d:I

.field private final e:F


# direct methods
.method private constructor <init>(Landroid/text/TextPaint;IF)V
    .locals 1
    .parameter
    .parameter
    .parameter

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 38
    const/high16 v0, 0x3f80

    iput v0, p0, Lcom/instagram/feed/d/y;->a:F

    .line 39
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/instagram/feed/d/y;->b:Z

    .line 46
    iput-object p1, p0, Lcom/instagram/feed/d/y;->c:Landroid/text/TextPaint;

    .line 47
    iput p2, p0, Lcom/instagram/feed/d/y;->d:I

    .line 48
    iput p3, p0, Lcom/instagram/feed/d/y;->e:F

    .line 49
    return-void
.end method

.method synthetic constructor <init>(Landroid/text/TextPaint;IFB)V
    .locals 0
    .parameter
    .parameter
    .parameter
    .parameter

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Lcom/instagram/feed/d/y;-><init>(Landroid/text/TextPaint;IF)V

    return-void
.end method

.method static synthetic a(Lcom/instagram/feed/d/y;)Landroid/text/TextPaint;
    .locals 1
    .parameter

    .prologue
    .line 36
    iget-object v0, p0, Lcom/instagram/feed/d/y;->c:Landroid/text/TextPaint;

    return-object v0
.end method

.method static synthetic b(Lcom/instagram/feed/d/y;)I
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/instagram/feed/d/y;->d:I

    return v0
.end method

.method static synthetic c(Lcom/instagram/feed/d/y;)F
    .locals 1
    .parameter

    .prologue
    .line 36
    iget v0, p0, Lcom/instagram/feed/d/y;->e:F

    return v0
.end method
