.class public final Lcom/instagram/android/g/c;
.super Ljava/lang/Object;
.source "Hashtag.java"


# static fields
.field public static a:Ljava/lang/String;


# instance fields
.field private b:Ljava/lang/String;

.field private c:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 23
    const-string v0, "com.instagram.android.model.Hashtag.BROADCAST_HASHTAG_UPDATED"

    sput-object v0, Lcom/instagram/android/g/c;->a:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 33
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 34
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;)V
    .locals 0
    .parameter

    .prologue
    .line 36
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput-object p1, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    .line 38
    return-void
.end method

.method static synthetic a(Lcom/instagram/android/g/c;I)I
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput p1, p0, Lcom/instagram/android/g/c;->c:I

    return p1
.end method

.method public static a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/android/g/c;
    .locals 3
    .parameter

    .prologue
    .line 46
    const/4 v0, 0x0

    .line 48
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    move-result-object v1

    sget-object v2, Lcom/fasterxml/jackson/a/r;->c:Lcom/fasterxml/jackson/a/r;

    if-eq v1, v2, :cond_4

    .line 49
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getCurrentName()Ljava/lang/String;

    move-result-object v1

    .line 51
    if-eqz v1, :cond_1

    if-nez v0, :cond_1

    .line 52
    new-instance v0, Lcom/instagram/android/g/c;

    invoke-direct {v0}, Lcom/instagram/android/g/c;-><init>()V

    .line 55
    :cond_1
    const-string v2, "media_count"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 56
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 57
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getIntValue()I

    move-result v1

    iput v1, v0, Lcom/instagram/android/g/c;->c:I

    goto :goto_0

    .line 58
    :cond_2
    const-string v2, "name"

    invoke-virtual {v2, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_3

    .line 59
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 60
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->getText()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    goto :goto_0

    .line 61
    :cond_3
    if-eqz v1, :cond_0

    .line 63
    invoke-virtual {p0}, Lcom/fasterxml/jackson/a/l;->skipChildren()Lcom/fasterxml/jackson/a/l;

    goto :goto_0

    .line 66
    :cond_4
    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/g/c;)Ljava/lang/String;
    .locals 1
    .parameter

    .prologue
    .line 21
    iget-object v0, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic a(Lcom/instagram/android/g/c;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .parameter
    .parameter

    .prologue
    .line 21
    iput-object p1, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    return-object p1
.end method

.method public static a(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter

    .prologue
    .line 30
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v1, Lcom/instagram/android/g/c;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "|"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method


# virtual methods
.method public final a()Ljava/lang/String;
    .locals 1

    .prologue
    .line 104
    iget-object v0, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    return-object v0
.end method

.method public final a(Landroid/content/Context;Landroid/support/v4/app/an;)V
    .locals 1
    .parameter
    .parameter

    .prologue
    .line 41
    new-instance v0, Lcom/instagram/android/g/d;

    invoke-direct {v0, p0, p1, p2}, Lcom/instagram/android/g/d;-><init>(Lcom/instagram/android/g/c;Landroid/content/Context;Landroid/support/v4/app/an;)V

    invoke-virtual {v0}, Lcom/instagram/android/g/d;->g()V

    .line 42
    return-void
.end method

.method public final b()I
    .locals 1

    .prologue
    .line 108
    iget v0, p0, Lcom/instagram/android/g/c;->c:I

    return v0
.end method

.method public final equals(Ljava/lang/Object;)Z
    .locals 4
    .parameter "o"

    .prologue
    const/4 v0, 0x1

    const/4 v1, 0x0

    .line 113
    if-ne p0, p1, :cond_1

    .line 121
    .end local p1
    :cond_0
    :goto_0
    return v0

    .line 114
    .restart local p1
    :cond_1
    if-eqz p1, :cond_2

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    if-eq v2, v3, :cond_3

    :cond_2
    move v0, v1

    goto :goto_0

    .line 116
    :cond_3
    check-cast p1, Lcom/instagram/android/g/c;

    .line 118
    .end local p1
    iget-object v2, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_4

    iget-object v2, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    iget-object v3, p1, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    :goto_1
    move v0, v1

    .line 119
    goto :goto_0

    .line 118
    :cond_4
    iget-object v2, p1, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    if-eqz v2, :cond_0

    goto :goto_1
.end method

.method public final hashCode()I
    .locals 1

    .prologue
    .line 126
    iget-object v0, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/instagram/android/g/c;->b:Ljava/lang/String;

    invoke-virtual {v0}, Ljava/lang/String;->hashCode()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
