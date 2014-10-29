.class public final Lcom/instagram/android/c/a/y;
.super Lcom/instagram/api/j/g;
.source "UpdateMediaRequest.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Lcom/instagram/api/j/g",
        "<",
        "Lcom/instagram/feed/d/l;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Ljava/lang/String;

.field private final d:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;"
        }
    .end annotation
.end field

.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;"
        }
    .end annotation
.end field

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/support/v4/app/an;Ljava/lang/String;Ljava/util/List;Ljava/util/List;Lcom/instagram/api/j/a;)V
    .locals 1
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/support/v4/app/an;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;",
            "Ljava/util/List",
            "<",
            "Lcom/instagram/model/people/PeopleTag;",
            ">;",
            "Lcom/instagram/api/j/a",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 54
    invoke-static {}, Lcom/instagram/common/y/e/a;->a()I

    move-result v0

    invoke-direct {p0, p1, p2, v0, p6}, Lcom/instagram/api/j/g;-><init>(Landroid/content/Context;Landroid/support/v4/app/an;ILcom/instagram/api/j/a;)V

    .line 56
    iput-object p3, p0, Lcom/instagram/android/c/a/y;->a:Ljava/lang/String;

    .line 57
    iput-object p4, p0, Lcom/instagram/android/c/a/y;->d:Ljava/util/List;

    .line 58
    iput-object p5, p0, Lcom/instagram/android/c/a/y;->e:Ljava/util/List;

    .line 59
    return-void
.end method

.method private o()Ljava/lang/String;
    .locals 4

    .prologue
    .line 85
    iget-object v0, p0, Lcom/instagram/android/c/a/y;->f:Ljava/lang/String;

    if-nez v0, :cond_2

    .line 86
    new-instance v0, Lcom/fasterxml/jackson/databind/ObjectMapper;

    sget-object v1, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-direct {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;-><init>(Lcom/fasterxml/jackson/a/e;)V

    .line 87
    new-instance v1, Lcom/fasterxml/jackson/databind/module/SimpleModule;

    invoke-static {}, Lcom/fasterxml/jackson/a/w;->a()Lcom/fasterxml/jackson/a/w;

    move-result-object v2

    invoke-direct {v1, v2}, Lcom/fasterxml/jackson/databind/module/SimpleModule;-><init>(Lcom/fasterxml/jackson/a/w;)V

    .line 88
    const-class v2, Lcom/instagram/model/people/PeopleTag;

    new-instance v3, Lcom/instagram/model/people/a/a;

    invoke-direct {v3}, Lcom/instagram/model/people/a/a;-><init>()V

    invoke-virtual {v1, v2, v3}, Lcom/fasterxml/jackson/databind/module/SimpleModule;->addSerializer(Ljava/lang/Class;Lcom/fasterxml/jackson/databind/JsonSerializer;)Lcom/fasterxml/jackson/databind/module/SimpleModule;

    .line 89
    invoke-virtual {v0, v1}, Lcom/fasterxml/jackson/databind/ObjectMapper;->registerModule(Lcom/fasterxml/jackson/databind/Module;)Lcom/fasterxml/jackson/databind/ObjectMapper;

    .line 91
    new-instance v1, Ljava/io/StringWriter;

    invoke-direct {v1}, Ljava/io/StringWriter;-><init>()V

    .line 92
    sget-object v2, Lcom/instagram/common/n/a;->a:Lcom/fasterxml/jackson/a/e;

    invoke-virtual {v2, v1}, Lcom/fasterxml/jackson/a/e;->createGenerator(Ljava/io/Writer;)Lcom/fasterxml/jackson/a/h;

    move-result-object v2

    .line 94
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeStartObject()V

    .line 97
    const-string v3, "in"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 98
    iget-object v3, p0, Lcom/instagram/android/c/a/y;->e:Ljava/util/List;

    invoke-virtual {v0, v2, v3}, Lcom/fasterxml/jackson/databind/ObjectMapper;->writeValue(Lcom/fasterxml/jackson/a/h;Ljava/lang/Object;)V

    .line 101
    iget-object v0, p0, Lcom/instagram/android/c/a/y;->d:Ljava/util/List;

    if-eqz v0, :cond_1

    .line 103
    new-instance v0, Ljava/util/ArrayList;

    iget-object v3, p0, Lcom/instagram/android/c/a/y;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 104
    iget-object v3, p0, Lcom/instagram/android/c/a/y;->e:Ljava/util/List;

    invoke-interface {v0, v3}, Ljava/util/List;->removeAll(Ljava/util/Collection;)Z

    .line 106
    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v3

    if-lez v3, :cond_1

    .line 108
    const-string v3, "removed"

    invoke-virtual {v2, v3}, Lcom/fasterxml/jackson/a/h;->writeFieldName(Ljava/lang/String;)V

    .line 109
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeStartArray()V

    .line 111
    invoke-interface {v0}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/instagram/model/people/PeopleTag;

    .line 112
    invoke-virtual {v0}, Lcom/instagram/model/people/PeopleTag;->d()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v2, v0}, Lcom/fasterxml/jackson/a/h;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 115
    :cond_0
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeEndArray()V

    .line 119
    :cond_1
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->writeEndObject()V

    .line 120
    invoke-virtual {v2}, Lcom/fasterxml/jackson/a/h;->close()V

    .line 122
    invoke-virtual {v1}, Ljava/io/StringWriter;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/instagram/android/c/a/y;->f:Ljava/lang/String;

    .line 125
    :cond_2
    iget-object v0, p0, Lcom/instagram/android/c/a/y;->f:Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method protected final a(Lcom/instagram/common/a/c/b;)V
    .locals 2
    .parameter

    .prologue
    .line 79
    :try_start_0
    const-string v0, "usertags"

    invoke-direct {p0}, Lcom/instagram/android/c/a/y;->o()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v0, v1}, Lcom/instagram/common/a/c/b;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 82
    :goto_0
    return-void

    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method public final a(Ljava/lang/String;Lcom/fasterxml/jackson/a/l;Lcom/instagram/api/j/p;)Z
    .locals 4
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Lcom/fasterxml/jackson/a/l;",
            "Lcom/instagram/api/j/p",
            "<",
            "Lcom/instagram/feed/d/l;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 132
    const-string v0, "media"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 133
    invoke-virtual {p2}, Lcom/fasterxml/jackson/a/l;->nextToken()Lcom/fasterxml/jackson/a/r;

    .line 134
    invoke-static {p2}, Lcom/instagram/feed/d/l;->a(Lcom/fasterxml/jackson/a/l;)Lcom/instagram/feed/d/l;

    move-result-object v1

    .line 135
    invoke-virtual {p3, v1}, Lcom/instagram/api/j/p;->a(Ljava/lang/Object;)V

    .line 139
    invoke-static {}, Lcom/instagram/service/a/a;->a()Lcom/instagram/service/a/a;

    move-result-object v0

    invoke-virtual {v0}, Lcom/instagram/service/a/a;->b()Lcom/instagram/user/c/a;

    move-result-object v2

    .line 141
    iget-object v0, p0, Lcom/instagram/android/c/a/y;->d:Ljava/util/List;

    if-nez v0, :cond_1

    .line 142
    new-instance v0, Lcom/instagram/model/people/b;

    invoke-direct {v0}, Lcom/instagram/model/people/b;-><init>()V

    .line 147
    :goto_0
    invoke-virtual {v0, v2}, Lcom/instagram/model/people/b;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {v1, v2}, Lcom/instagram/feed/d/l;->a(Lcom/instagram/user/c/a;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-virtual {v1}, Lcom/instagram/feed/d/l;->Y()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 150
    new-instance v0, Lcom/instagram/common/d/j;

    invoke-virtual {p0}, Lcom/instagram/android/c/a/y;->k()Landroid/content/Context;

    move-result-object v1

    invoke-direct {v0, v1}, Lcom/instagram/common/d/j;-><init>(Landroid/content/Context;)V

    const-string v1, "com.instagram.android.people.fragment.PhotosOfYouFragment.PHOTOS_OF_YOU_UPDATED"

    invoke-virtual {v0, v1}, Lcom/instagram/common/d/j;->a(Ljava/lang/String;)V

    .line 155
    :cond_0
    const/4 v0, 0x1

    .line 158
    :goto_1
    return v0

    .line 144
    :cond_1
    new-instance v0, Lcom/instagram/model/people/b;

    iget-object v3, p0, Lcom/instagram/android/c/a/y;->d:Ljava/util/List;

    invoke-direct {v0, v3}, Lcom/instagram/model/people/b;-><init>(Ljava/util/List;)V

    goto :goto_0

    .line 158
    :cond_2
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public final b()Z
    .locals 1

    .prologue
    .line 73
    const/4 v0, 0x1

    return v0
.end method

.method public final c()I
    .locals 1

    .prologue
    .line 68
    sget v0, Lcom/instagram/common/a/c/a;->a:I

    return v0
.end method

.method protected final c_()Ljava/lang/String;
    .locals 2

    .prologue
    .line 63
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "usertags/"

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    iget-object v1, p0, Lcom/instagram/android/c/a/y;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "/update/"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
