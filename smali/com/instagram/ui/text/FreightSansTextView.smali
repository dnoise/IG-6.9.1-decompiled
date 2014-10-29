.class public Lcom/instagram/ui/text/FreightSansTextView;
.super Landroid/widget/TextView;
.source "FreightSansTextView.java"


# static fields
.field private static a:Landroid/graphics/Typeface;

.field private static b:Lcom/instagram/ui/text/a;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 16
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 17
    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->a()V

    .line 18
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 21
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 22
    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->a()V

    .line 23
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 26
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 27
    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->a()V

    .line 28
    return-void
.end method

.method private a()V
    .locals 1

    .prologue
    .line 31
    invoke-virtual {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Lcom/instagram/ui/text/b;->a(Landroid/content/Context;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 32
    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getCustomTypeface()Landroid/graphics/Typeface;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/text/FreightSansTextView;->setTypeface(Landroid/graphics/Typeface;)V

    .line 36
    :goto_0
    invoke-direct {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getAllCapsTransformation()Lcom/instagram/ui/text/a;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/instagram/ui/text/FreightSansTextView;->setTransformationMethod(Landroid/text/method/TransformationMethod;)V

    .line 37
    return-void

    .line 34
    :cond_0
    sget-object v0, Landroid/graphics/Typeface;->DEFAULT_BOLD:Landroid/graphics/Typeface;

    invoke-virtual {p0, v0}, Lcom/instagram/ui/text/FreightSansTextView;->setTypeface(Landroid/graphics/Typeface;)V

    goto :goto_0
.end method

.method private getAllCapsTransformation()Lcom/instagram/ui/text/a;
    .locals 2

    .prologue
    .line 40
    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->b:Lcom/instagram/ui/text/a;

    if-nez v0, :cond_0

    .line 41
    new-instance v0, Lcom/instagram/ui/text/a;

    invoke-virtual {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/ui/text/a;-><init>(Landroid/content/Context;)V

    sput-object v0, Lcom/instagram/ui/text/FreightSansTextView;->b:Lcom/instagram/ui/text/a;

    .line 43
    :cond_0
    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->b:Lcom/instagram/ui/text/a;

    return-object v0
.end method

.method private getCustomTypeface()Landroid/graphics/Typeface;
    .locals 2

    .prologue
    .line 47
    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->a:Landroid/graphics/Typeface;

    if-nez v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lcom/instagram/ui/text/FreightSansTextView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v0

    const-string v1, "FreigSanProSem.otf"

    invoke-static {v0, v1}, Landroid/graphics/Typeface;->createFromAsset(Landroid/content/res/AssetManager;Ljava/lang/String;)Landroid/graphics/Typeface;

    move-result-object v0

    sput-object v0, Lcom/instagram/ui/text/FreightSansTextView;->a:Landroid/graphics/Typeface;

    .line 50
    :cond_0
    sget-object v0, Lcom/instagram/ui/text/FreightSansTextView;->a:Landroid/graphics/Typeface;

    return-object v0
.end method
